import 'dart:io';

import 'package:weather_app/core/errors/exceptions.dart';

class NoInternetException extends ServerException {
  const NoInternetException(String message)
      : super(message: message, status: HttpStatus.networkConnectTimeoutError);
}

class NoServiceFoundException extends ServerException {
  const NoServiceFoundException(String message)
      : super(
            message: message, status: HttpStatus.networkAuthenticationRequired);
}

class InvalidFormatException extends ServerException {
  const InvalidFormatException(String message)
      : super(message: message, status: HttpStatus.badRequest);
}

class UnknownException extends ServerException {
  const UnknownException(String message, int code)
      : super(message: message, status: code);
}
