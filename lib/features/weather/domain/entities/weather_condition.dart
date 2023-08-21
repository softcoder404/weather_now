import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/weather_condition_model.dart';

part 'weather_condition.freezed.dart';

@freezed
class WeatherConditionEntity with _$WeatherConditionEntity {
  const factory WeatherConditionEntity({
    required String locationName,
    required String country,
    required DateTime localTime,
    required double lat,
    required double lon,
    required double tempInCelcius,
    required bool isDay,
    required String conditionName,
    required String cloudIcon,
    required double windKph,
    required num humidity,
    required num cloud,
    required num uv,
    required num visibilityKm,
  }) = _WeatherConditionEntity;

  // Mapper: create Entity from Model
  factory WeatherConditionEntity.fromModel(
      WeatherConditionModel weatherConditionModel) {
    return WeatherConditionEntity(
      locationName: weatherConditionModel.location.name,
      country: weatherConditionModel.location.country,
      localTime: DateTime.parse(weatherConditionModel.location.localtime),
      lat: weatherConditionModel.location.lat ?? 0,
      lon: weatherConditionModel.location.lon ?? 0,
      tempInCelcius: weatherConditionModel.current.temp_c,
      isDay: weatherConditionModel.current.is_day == 1,
      conditionName: weatherConditionModel.current.condition.text,
      cloudIcon: _mapCloudIconToAssetUser(
          weatherConditionModel.current.condition.icon),
      windKph: weatherConditionModel.current.wind_kph,
      humidity: weatherConditionModel.current.humidity,
      cloud: weatherConditionModel.current.cloud,
      uv: weatherConditionModel.current.uv,
      visibilityKm: weatherConditionModel.current.vis_km,
    );
  }

  static String _mapCloudIconToAssetUser(String cloudUrl) {
    //cloudUrl sample: //cdn.weatherapi.com/weather/64x64/day/116.png"
    final iconSuffix = cloudUrl.split('/64x64/').last;
    return "assets/icons/clouds/$iconSuffix";
  }
}
