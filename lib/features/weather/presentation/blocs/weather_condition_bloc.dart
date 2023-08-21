import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/usecases/get_weather_by_query_usecase.dart.dart';
import 'bloc.dart';

class WeatherConditionBloc
    extends Bloc<WeatherConditionEvent, WeatherConditionState> {
  final GetWeatherConditionByCityUseCase getWeatherConditionByCityUseCase;
  WeatherConditionBloc({required this.getWeatherConditionByCityUseCase})
      : super(Empty()) {
    on<GetWeatherConcreteConditionEvent>((event, emit) async {
      final city = event.city;
      final params = GetWeatherParams(city: city);
      //! data validation must have been handle from ui
      emit(Loading());
      final results = await getWeatherConditionByCityUseCase(params);
      final res = results.fold(
          (failure) => Error(message: (failure as ServerFailure).message),
          (data) => Loaded(weatherCondition: data));
      emit(res);
    });
  }
}
