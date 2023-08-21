import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_condition_repository.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';

class GetWeatherConditionByCityUseCase
    implements UseCase<WeatherConditionEntity, GetWeatherParams> {
  final WeatherConditionRepository repository;

  GetWeatherConditionByCityUseCase(this.repository);

  @override
  Future<Either<Failure, WeatherConditionEntity>> call(
      GetWeatherParams params) async {
    return await repository.getWeatherConditionByCity(params.city);
  }
}

class GetWeatherParams extends Equatable {
  final String city; //city, state, country latlon

  const GetWeatherParams({required this.city});

  @override
  List<Object> get props => [city];
}
