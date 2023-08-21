import 'dart:developer';

import 'package:weather_app/core/errors/exceptions.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:weather_app/core/errors/http_exceptions.dart';
import 'package:weather_app/core/service/network_info_services.dart';
import 'package:weather_app/features/weather/data/sources/weather_condition_remote_source.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_condition_repository.dart';

class WeatherConditionRepositoryImpl implements WeatherConditionRepository {
  final WeatherConditionRemoteDataSource networkSource;
  final NetworkInfo networkInfo;
  const WeatherConditionRepositoryImpl(this.networkSource, this.networkInfo);

  @override
  Future<Either<Failure, WeatherConditionEntity>> getWeatherConditionByCity(
      String city) async {
    try {
      final isConnected = await networkInfo.isConnected;
      if (!isConnected) {
        //!You might want to fetch LocalDB
        return Left(NoInternetFailure('No Internet Connection'));
      }

      const apiKey = String.fromEnvironment('apiKey');
      final weatherConditionModel =
          await networkSource.getWeatherConditionByCity(city, apiKey);
      return Right(WeatherConditionEntity.fromModel(weatherConditionModel));
    } catch (e) {
      //handle exception and return failure
      if (e is NoInternetException) {
        return Left(NoInternetFailure(e.message ?? 'No Internet Connection'));
      }
      if (e is UnknownException) {
        return Left(ServerFailure(e.message.toString()));
      }
      return Left(ServerFailure("Ooops! an error occurs"));
    }
  }
}
