// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_condition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherConditionModel _$WeatherConditionModelFromJson(
    Map<String, dynamic> json) {
  return _WeatherConditionModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherConditionModel {
  LocationModel get location => throw _privateConstructorUsedError;
  CurrentModel get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherConditionModelCopyWith<WeatherConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionModelCopyWith<$Res> {
  factory $WeatherConditionModelCopyWith(WeatherConditionModel value,
          $Res Function(WeatherConditionModel) then) =
      _$WeatherConditionModelCopyWithImpl<$Res, WeatherConditionModel>;
  @useResult
  $Res call({LocationModel location, CurrentModel current});

  $LocationModelCopyWith<$Res> get location;
  $CurrentModelCopyWith<$Res> get current;
}

/// @nodoc
class _$WeatherConditionModelCopyWithImpl<$Res,
        $Val extends WeatherConditionModel>
    implements $WeatherConditionModelCopyWith<$Res> {
  _$WeatherConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentModelCopyWith<$Res> get current {
    return $CurrentModelCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherConditionModelCopyWith<$Res>
    implements $WeatherConditionModelCopyWith<$Res> {
  factory _$$_WeatherConditionModelCopyWith(_$_WeatherConditionModel value,
          $Res Function(_$_WeatherConditionModel) then) =
      __$$_WeatherConditionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationModel location, CurrentModel current});

  @override
  $LocationModelCopyWith<$Res> get location;
  @override
  $CurrentModelCopyWith<$Res> get current;
}

/// @nodoc
class __$$_WeatherConditionModelCopyWithImpl<$Res>
    extends _$WeatherConditionModelCopyWithImpl<$Res, _$_WeatherConditionModel>
    implements _$$_WeatherConditionModelCopyWith<$Res> {
  __$$_WeatherConditionModelCopyWithImpl(_$_WeatherConditionModel _value,
      $Res Function(_$_WeatherConditionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
  }) {
    return _then(_$_WeatherConditionModel(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherConditionModel implements _WeatherConditionModel {
  const _$_WeatherConditionModel(
      {required this.location, required this.current});

  factory _$_WeatherConditionModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherConditionModelFromJson(json);

  @override
  final LocationModel location;
  @override
  final CurrentModel current;

  @override
  String toString() {
    return 'WeatherConditionModel(location: $location, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherConditionModel &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, location, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherConditionModelCopyWith<_$_WeatherConditionModel> get copyWith =>
      __$$_WeatherConditionModelCopyWithImpl<_$_WeatherConditionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherConditionModelToJson(
      this,
    );
  }
}

abstract class _WeatherConditionModel implements WeatherConditionModel {
  const factory _WeatherConditionModel(
      {required final LocationModel location,
      required final CurrentModel current}) = _$_WeatherConditionModel;

  factory _WeatherConditionModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherConditionModel.fromJson;

  @override
  LocationModel get location;
  @override
  CurrentModel get current;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherConditionModelCopyWith<_$_WeatherConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  String get localtime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call(
      {String name,
      String country,
      double? lat,
      double? lon,
      String localtime});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? localtime = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationModelCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$_LocationModelCopyWith(
          _$_LocationModel value, $Res Function(_$_LocationModel) then) =
      __$$_LocationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String country,
      double? lat,
      double? lon,
      String localtime});
}

/// @nodoc
class __$$_LocationModelCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$_LocationModel>
    implements _$$_LocationModelCopyWith<$Res> {
  __$$_LocationModelCopyWithImpl(
      _$_LocationModel _value, $Res Function(_$_LocationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? country = null,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? localtime = null,
  }) {
    return _then(_$_LocationModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModel implements _LocationModel {
  const _$_LocationModel(
      {required this.name,
      required this.country,
      this.lat,
      this.lon,
      required this.localtime});

  factory _$_LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);

  @override
  final String name;
  @override
  final String country;
  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final String localtime;

  @override
  String toString() {
    return 'LocationModel(name: $name, country: $country, lat: $lat, lon: $lon, localtime: $localtime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, country, lat, lon, localtime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      __$$_LocationModelCopyWithImpl<_$_LocationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {required final String name,
      required final String country,
      final double? lat,
      final double? lon,
      required final String localtime}) = _$_LocationModel;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$_LocationModel.fromJson;

  @override
  String get name;
  @override
  String get country;
  @override
  double? get lat;
  @override
  double? get lon;
  @override
  String get localtime;
  @override
  @JsonKey(ignore: true)
  _$$_LocationModelCopyWith<_$_LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentModel _$CurrentModelFromJson(Map<String, dynamic> json) {
  return _CurrentModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentModel {
  double get temp_c => throw _privateConstructorUsedError;
  int get is_day => throw _privateConstructorUsedError;
  double get wind_kph => throw _privateConstructorUsedError;
  num get humidity => throw _privateConstructorUsedError;
  num get cloud => throw _privateConstructorUsedError;
  num get uv => throw _privateConstructorUsedError;
  num get vis_km => throw _privateConstructorUsedError;
  ConditionModel get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentModelCopyWith<CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentModelCopyWith<$Res> {
  factory $CurrentModelCopyWith(
          CurrentModel value, $Res Function(CurrentModel) then) =
      _$CurrentModelCopyWithImpl<$Res, CurrentModel>;
  @useResult
  $Res call(
      {double temp_c,
      int is_day,
      double wind_kph,
      num humidity,
      num cloud,
      num uv,
      num vis_km,
      ConditionModel condition});

  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class _$CurrentModelCopyWithImpl<$Res, $Val extends CurrentModel>
    implements $CurrentModelCopyWith<$Res> {
  _$CurrentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp_c = null,
    Object? is_day = null,
    Object? wind_kph = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? uv = null,
    Object? vis_km = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      temp_c: null == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as double,
      is_day: null == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int,
      wind_kph: null == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as num,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as num,
      vis_km: null == vis_km
          ? _value.vis_km
          : vis_km // ignore: cast_nullable_to_non_nullable
              as num,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConditionModelCopyWith<$Res> get condition {
    return $ConditionModelCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CurrentModelCopyWith<$Res>
    implements $CurrentModelCopyWith<$Res> {
  factory _$$_CurrentModelCopyWith(
          _$_CurrentModel value, $Res Function(_$_CurrentModel) then) =
      __$$_CurrentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp_c,
      int is_day,
      double wind_kph,
      num humidity,
      num cloud,
      num uv,
      num vis_km,
      ConditionModel condition});

  @override
  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class __$$_CurrentModelCopyWithImpl<$Res>
    extends _$CurrentModelCopyWithImpl<$Res, _$_CurrentModel>
    implements _$$_CurrentModelCopyWith<$Res> {
  __$$_CurrentModelCopyWithImpl(
      _$_CurrentModel _value, $Res Function(_$_CurrentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp_c = null,
    Object? is_day = null,
    Object? wind_kph = null,
    Object? humidity = null,
    Object? cloud = null,
    Object? uv = null,
    Object? vis_km = null,
    Object? condition = null,
  }) {
    return _then(_$_CurrentModel(
      temp_c: null == temp_c
          ? _value.temp_c
          : temp_c // ignore: cast_nullable_to_non_nullable
              as double,
      is_day: null == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int,
      wind_kph: null == wind_kph
          ? _value.wind_kph
          : wind_kph // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num,
      cloud: null == cloud
          ? _value.cloud
          : cloud // ignore: cast_nullable_to_non_nullable
              as num,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as num,
      vis_km: null == vis_km
          ? _value.vis_km
          : vis_km // ignore: cast_nullable_to_non_nullable
              as num,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentModel implements _CurrentModel {
  const _$_CurrentModel(
      {required this.temp_c,
      required this.is_day,
      required this.wind_kph,
      required this.humidity,
      required this.cloud,
      required this.uv,
      required this.vis_km,
      required this.condition});

  factory _$_CurrentModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentModelFromJson(json);

  @override
  final double temp_c;
  @override
  final int is_day;
  @override
  final double wind_kph;
  @override
  final num humidity;
  @override
  final num cloud;
  @override
  final num uv;
  @override
  final num vis_km;
  @override
  final ConditionModel condition;

  @override
  String toString() {
    return 'CurrentModel(temp_c: $temp_c, is_day: $is_day, wind_kph: $wind_kph, humidity: $humidity, cloud: $cloud, uv: $uv, vis_km: $vis_km, condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentModel &&
            (identical(other.temp_c, temp_c) || other.temp_c == temp_c) &&
            (identical(other.is_day, is_day) || other.is_day == is_day) &&
            (identical(other.wind_kph, wind_kph) ||
                other.wind_kph == wind_kph) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.vis_km, vis_km) || other.vis_km == vis_km) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp_c, is_day, wind_kph,
      humidity, cloud, uv, vis_km, condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentModelCopyWith<_$_CurrentModel> get copyWith =>
      __$$_CurrentModelCopyWithImpl<_$_CurrentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentModelToJson(
      this,
    );
  }
}

abstract class _CurrentModel implements CurrentModel {
  const factory _CurrentModel(
      {required final double temp_c,
      required final int is_day,
      required final double wind_kph,
      required final num humidity,
      required final num cloud,
      required final num uv,
      required final num vis_km,
      required final ConditionModel condition}) = _$_CurrentModel;

  factory _CurrentModel.fromJson(Map<String, dynamic> json) =
      _$_CurrentModel.fromJson;

  @override
  double get temp_c;
  @override
  int get is_day;
  @override
  double get wind_kph;
  @override
  num get humidity;
  @override
  num get cloud;
  @override
  num get uv;
  @override
  num get vis_km;
  @override
  ConditionModel get condition;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentModelCopyWith<_$_CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) {
  return _ConditionModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionModel {
  String get text => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConditionModelCopyWith<ConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionModelCopyWith<$Res> {
  factory $ConditionModelCopyWith(
          ConditionModel value, $Res Function(ConditionModel) then) =
      _$ConditionModelCopyWithImpl<$Res, ConditionModel>;
  @useResult
  $Res call({String text, String icon});
}

/// @nodoc
class _$ConditionModelCopyWithImpl<$Res, $Val extends ConditionModel>
    implements $ConditionModelCopyWith<$Res> {
  _$ConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConditionModelCopyWith<$Res>
    implements $ConditionModelCopyWith<$Res> {
  factory _$$_ConditionModelCopyWith(
          _$_ConditionModel value, $Res Function(_$_ConditionModel) then) =
      __$$_ConditionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String icon});
}

/// @nodoc
class __$$_ConditionModelCopyWithImpl<$Res>
    extends _$ConditionModelCopyWithImpl<$Res, _$_ConditionModel>
    implements _$$_ConditionModelCopyWith<$Res> {
  __$$_ConditionModelCopyWithImpl(
      _$_ConditionModel _value, $Res Function(_$_ConditionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? icon = null,
  }) {
    return _then(_$_ConditionModel(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConditionModel implements _ConditionModel {
  const _$_ConditionModel({required this.text, required this.icon});

  factory _$_ConditionModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionModelFromJson(json);

  @override
  final String text;
  @override
  final String icon;

  @override
  String toString() {
    return 'ConditionModel(text: $text, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConditionModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConditionModelCopyWith<_$_ConditionModel> get copyWith =>
      __$$_ConditionModelCopyWithImpl<_$_ConditionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConditionModelToJson(
      this,
    );
  }
}

abstract class _ConditionModel implements ConditionModel {
  const factory _ConditionModel(
      {required final String text,
      required final String icon}) = _$_ConditionModel;

  factory _ConditionModel.fromJson(Map<String, dynamic> json) =
      _$_ConditionModel.fromJson;

  @override
  String get text;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_ConditionModelCopyWith<_$_ConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
