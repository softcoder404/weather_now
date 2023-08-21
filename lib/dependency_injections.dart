import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/core/interfaces/http_request_interface.dart';
import 'package:weather_app/core/service/http_service.dart';
import 'package:weather_app/core/service/network_info_services.dart';
import 'package:weather_app/features/weather/data/repository/weather_condition_repository_impl.dart';
import 'package:weather_app/features/weather/data/sources/weather_condition_remote_source.dart';
import 'package:weather_app/features/weather/domain/repositories/weather_condition_repository.dart';
import 'package:weather_app/features/weather/domain/usecases/get_weather_by_query_usecase.dart.dart';
import 'package:weather_app/features/weather/presentation/blocs/bloc.dart';

final getIt = GetIt.instance;

Future<void> initDI() async {
  // Blocs
  getIt.registerFactory<WeatherConditionBloc>(
    () => WeatherConditionBloc(
      getWeatherConditionByCityUseCase: getIt(),
    ),
  );

  // Usecases
  getIt.registerLazySingleton(() => GetWeatherConditionByCityUseCase(getIt()));

  // Repositories
  getIt.registerLazySingleton<WeatherConditionRepository>(
      () => WeatherConditionRepositoryImpl(getIt(), getIt()));

  //Data Sources
  getIt.registerLazySingleton<WeatherConditionRemoteDataSource>(
      () => WeatherConditionRemoteDataSourceImpl(httpService: getIt()));
  //Others
  getIt.registerLazySingleton<IHttpRequests>(() => HttpService());
  getIt.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(getIt()));

  //Third Party Library
  getIt.registerLazySingleton(() => DataConnectionChecker());
}
