import 'package:equatable/equatable.dart';
import 'package:weather_app/features/weather/domain/entities/weather_condition.dart';

class WeatherConditionState extends Equatable {
  const WeatherConditionState();
  @override
  List<Object> get props => [];
}

class Empty extends WeatherConditionState {}

class Loading extends WeatherConditionState {}

class Loaded extends WeatherConditionState {
  final WeatherConditionEntity weatherCondition;
  const Loaded({required this.weatherCondition});

  @override
  List<Object> get props => [weatherCondition];
}

class Error extends WeatherConditionState {
  final String message;
  const Error({required this.message});

  @override
  List<Object> get props => [message];
}
