import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:weather_app/core/errors/exceptions.dart';
import 'package:weather_app/core/errors/http_exceptions.dart';
import 'package:weather_app/core/interfaces/http_request_interface.dart';

import '../typedefs/api_response_type.dart';

typedef HttpRequestCallBack = Future<Response> Function(Client);

/// Make HTTP Request and return parsed data.
/// Throws a [ServerException] for all Exception.
class HttpService implements IHttpRequests {
  static final HttpService _singleton = HttpService._internal();
  factory HttpService() => _singleton;
  HttpService._internal();
  @override
  ApiResponse post({
    required Map<String, dynamic> payload,
    required String url,
    String? token,
  }) async {
    try {
      return await _makeRequest((client) async {
        return await client.post(
          Uri.parse(url),
          body: json.encode(payload),
          headers: _httpHeaders(token),
          encoding: Encoding.getByName('utf-8'),
        );
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  ApiResponse get({
    required String url,
    String? token,
  }) async {
    try {
      return await _makeRequest((client) async {
        return await client.get(
          Uri.parse(url),
          headers: _httpHeaders(null),
        );
      });
    } catch (e) {
      rethrow;
    }
  }

  ApiResponse _makeRequest(HttpRequestCallBack httpRequestCallBack) async {
    final client = http.Client();
    try {
      final response = await httpRequestCallBack(client);
      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return json.decode(response.body);
      } else {
        throw UnknownException(
            'Oops! An Error Occur, Pls try again.', response.statusCode);
      }
    } on SocketException catch (_) {
      throw const NoInternetException('No Internet');
    } on HttpException {
      throw const NoServiceFoundException('No Service Found');
    } on FormatException {
      throw const InvalidFormatException('Invalid Data Format');
    } catch (message, trace) {
      debugPrintStack(stackTrace: trace);
      rethrow;
    } finally {
      client.close();
    }
  }

  Map<String, String> _httpHeaders(String? token) {
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.acceptHeader: "application/json",
      if (token != null) HttpHeaders.authorizationHeader: 'Bearer $token',
    };
    return headers;
  }
}
