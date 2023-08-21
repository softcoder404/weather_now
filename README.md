# WeatherNow

# About
This repo contains the code serving the mobile application(android/iOS) for WeatherNow.

# Project Structure
This project contain one(1) entry file main.dart and one major entry folder (src folder)
- main.dart
- app.dart
- dependency_injections.dart
- themes
  - colors.dart
  - spacing.dart
  - styles.dart
  - themes.dart
- routes
  - app_navigator.dart
  - routing_table.dart
  - screen_view_observer.dart
- core
  - errors
    - exceptions.dart
    - failures.dart
    - http_exceptions.dart
  - interfaces
    - http_request_interface.dart
  - service
    - http_service.dart
    - network_info_services.dart
  - typedefs
    - api_response_type.dart
    - network_response_type.dart
  - usecase
    - usecase.dart
  - utils
    - time_utils.dart
  - features
    - weather
     - data
      - model
      - repository
      - sources
     - domain
       - entities
       - repositories
       - usecases
     - presentation
       - blocs
       - screens
       - widgets
    
  
# Running the project
- clone the repo and cd into the project folder
- run these command to start the project
  - flutter clean
  - flutter pub get
  - flutter run --dart-define=apiKey={replace with your weatherapi key}
### NB: Ensure you have flutter sdk already installed on your local machine. check flutter.dev for installation guides

# Technologies
- Flutter
- Dart

### Demo
<img src="https://github.com/softcoder404/weather_now/raw/main/assets/images/screen1.png" width="300" height="570">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://github.com/softcoder404/weather_now/raw/main/assets/images/screen2.png" width="300" height="570">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://github.com/softcoder404/weather_now/raw/main/assets/images/screen3.png" width="300" height="570">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="https://github.com/softcoder404/weather_now/raw/main/assets/images/screen4.png" width="300" height="570">

