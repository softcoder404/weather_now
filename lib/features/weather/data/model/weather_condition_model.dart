// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_condition_model.freezed.dart';
part 'weather_condition_model.g.dart'; //required because our class is serializable

@freezed
class WeatherConditionModel with _$WeatherConditionModel {
  const factory WeatherConditionModel({
    required LocationModel location,
    required CurrentModel current,
  }) = _WeatherConditionModel;

  factory WeatherConditionModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionModelFromJson(json);
}

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    required String name,
    required String country,
    double? lat,
    double? lon,
    required String localtime,
  }) = _LocationModel;
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}

@freezed
class CurrentModel with _$CurrentModel {
  const factory CurrentModel({
    required double temp_c,
    required int is_day,
    required double wind_kph,
    required num humidity,
    required num cloud,
    required num uv,
    required num vis_km,
    required ConditionModel condition,
  }) = _CurrentModel;

  factory CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentModelFromJson(json);
}

@freezed
class ConditionModel with _$ConditionModel {
  const factory ConditionModel({
    required String text,
    required String icon,
  }) = _ConditionModel;

  factory ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionModelFromJson(json);
}
