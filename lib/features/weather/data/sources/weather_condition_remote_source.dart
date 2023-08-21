import 'package:weather_app/core/errors/exceptions.dart';
import 'package:weather_app/core/interfaces/http_request_interface.dart';

import '../model/weather_condition_model.dart';

abstract class WeatherConditionRemoteDataSource {
  /// Calls the https://api.weatherapi.com/v1/forecast.json  endpoint.
  /// Pass US Zipcode, UK Postcode, Canada Postalcode, IP address, Latitude/Longitude (decimal degree e.g 123.454,12.34) or city name.
  /// Throws a [ServerException] for all error codes.
  /// return [WeatherConditionModel] on success
  Future<WeatherConditionModel> getWeatherConditionByCity(
      String city, String apiKey);
}

class WeatherConditionRemoteDataSourceImpl
    implements WeatherConditionRemoteDataSource {
  final IHttpRequests httpService;
  WeatherConditionRemoteDataSourceImpl({required this.httpService});

  @override
  Future<WeatherConditionModel> getWeatherConditionByCity(
      String city, String apiKey) async {
    try {
      final url =
          'https://api.weatherapi.com/v1/current.json?q=$city&key=$apiKey';
      final parsedData = await httpService.get(url: url);
      return WeatherConditionModel.fromJson(parsedData);
    } catch (e) {
      rethrow; //rethrow server exception
    }
  }
}
