import 'package:dartz/dartz.dart';
import 'package:weather_app/core/errors/failures.dart';

import '../entities/weather_condition.dart';

abstract class WeatherConditionRepository {
  Future<Either<Failure, WeatherConditionEntity>> getWeatherConditionByCity(
      String city);
}
