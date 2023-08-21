import 'package:weather_app/core/typedefs/api_response_type.dart';

/// A base class representing the required methods that any http protocol must implement such as HTTP or Dio Package
abstract class IHttpRequests {
  /// Handles GET requests made by the service class, taking the required url [url] and any
  /// throw server exception or parsed data
  ApiResponse get({
    required String url,
    String? token,
  });

  /// Handles POST requests made by the service class, taking the required url [url] and any
  /// throw server exception or parsed data
  ApiResponse post({
    required Map<String, dynamic> payload,
    required String url,
    String? token,
  });

  //! Add other HTTP method
}
