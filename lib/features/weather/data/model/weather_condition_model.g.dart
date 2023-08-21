// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherConditionModel _$$_WeatherConditionModelFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherConditionModel(
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      current: CurrentModel.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherConditionModelToJson(
        _$_WeatherConditionModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      name: json['name'] as String,
      country: json['country'] as String,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      localtime: json['localtime'] as String,
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'localtime': instance.localtime,
    };

_$_CurrentModel _$$_CurrentModelFromJson(Map<String, dynamic> json) =>
    _$_CurrentModel(
      temp_c: (json['temp_c'] as num).toDouble(),
      is_day: json['is_day'] as int,
      wind_kph: (json['wind_kph'] as num).toDouble(),
      humidity: json['humidity'] as num,
      cloud: json['cloud'] as num,
      uv: json['uv'] as num,
      vis_km: json['vis_km'] as num,
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrentModelToJson(_$_CurrentModel instance) =>
    <String, dynamic>{
      'temp_c': instance.temp_c,
      'is_day': instance.is_day,
      'wind_kph': instance.wind_kph,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'uv': instance.uv,
      'vis_km': instance.vis_km,
      'condition': instance.condition,
    };

_$_ConditionModel _$$_ConditionModelFromJson(Map<String, dynamic> json) =>
    _$_ConditionModel(
      text: json['text'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$_ConditionModelToJson(_$_ConditionModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
    };
