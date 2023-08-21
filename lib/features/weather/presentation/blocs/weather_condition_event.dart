import 'package:equatable/equatable.dart';

abstract class WeatherConditionEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetWeatherConcreteConditionEvent extends WeatherConditionEvent {
  final String city;

  GetWeatherConcreteConditionEvent(this.city);

  @override
  List<Object> get props => [city];
}
