// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inner_district_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InnerDistrictModel _$InnerDistrictModelFromJson(Map<String, dynamic> json) {
  return _InnerDistrictModel.fromJson(json);
}

/// @nodoc
mixin _$InnerDistrictModel {
  String? get id => throw _privateConstructorUsedError;
  String? get arName => throw _privateConstructorUsedError;
  String? get enName => throw _privateConstructorUsedError;
  InnerCityModel? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnerDistrictModelCopyWith<InnerDistrictModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerDistrictModelCopyWith<$Res> {
  factory $InnerDistrictModelCopyWith(
          InnerDistrictModel value, $Res Function(InnerDistrictModel) then) =
      _$InnerDistrictModelCopyWithImpl<$Res, InnerDistrictModel>;
  @useResult
  $Res call({String? id, String? arName, String? enName, InnerCityModel? city});

  $InnerCityModelCopyWith<$Res>? get city;
}

/// @nodoc
class _$InnerDistrictModelCopyWithImpl<$Res, $Val extends InnerDistrictModel>
    implements $InnerDistrictModelCopyWith<$Res> {
  _$InnerDistrictModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? arName = freezed,
    Object? enName = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      arName: freezed == arName
          ? _value.arName
          : arName // ignore: cast_nullable_to_non_nullable
              as String?,
      enName: freezed == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as InnerCityModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InnerCityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $InnerCityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InnerDistrictModelCopyWith<$Res>
    implements $InnerDistrictModelCopyWith<$Res> {
  factory _$$_InnerDistrictModelCopyWith(_$_InnerDistrictModel value,
          $Res Function(_$_InnerDistrictModel) then) =
      __$$_InnerDistrictModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? arName, String? enName, InnerCityModel? city});

  @override
  $InnerCityModelCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_InnerDistrictModelCopyWithImpl<$Res>
    extends _$InnerDistrictModelCopyWithImpl<$Res, _$_InnerDistrictModel>
    implements _$$_InnerDistrictModelCopyWith<$Res> {
  __$$_InnerDistrictModelCopyWithImpl(
      _$_InnerDistrictModel _value, $Res Function(_$_InnerDistrictModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? arName = freezed,
    Object? enName = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_InnerDistrictModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      arName: freezed == arName
          ? _value.arName
          : arName // ignore: cast_nullable_to_non_nullable
              as String?,
      enName: freezed == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as InnerCityModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InnerDistrictModel
    with DiagnosticableTreeMixin
    implements _InnerDistrictModel {
  const _$_InnerDistrictModel(
      {required this.id,
      required this.arName,
      required this.enName,
      required this.city});

  factory _$_InnerDistrictModel.fromJson(Map<String, dynamic> json) =>
      _$$_InnerDistrictModelFromJson(json);

  @override
  final String? id;
  @override
  final String? arName;
  @override
  final String? enName;
  @override
  final InnerCityModel? city;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InnerDistrictModel(id: $id, arName: $arName, enName: $enName, city: $city)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InnerDistrictModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('arName', arName))
      ..add(DiagnosticsProperty('enName', enName))
      ..add(DiagnosticsProperty('city', city));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnerDistrictModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.arName, arName) || other.arName == arName) &&
            (identical(other.enName, enName) || other.enName == enName) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, arName, enName, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnerDistrictModelCopyWith<_$_InnerDistrictModel> get copyWith =>
      __$$_InnerDistrictModelCopyWithImpl<_$_InnerDistrictModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InnerDistrictModelToJson(
      this,
    );
  }
}

abstract class _InnerDistrictModel implements InnerDistrictModel {
  const factory _InnerDistrictModel(
      {required final String? id,
      required final String? arName,
      required final String? enName,
      required final InnerCityModel? city}) = _$_InnerDistrictModel;

  factory _InnerDistrictModel.fromJson(Map<String, dynamic> json) =
      _$_InnerDistrictModel.fromJson;

  @override
  String? get id;
  @override
  String? get arName;
  @override
  String? get enName;
  @override
  InnerCityModel? get city;
  @override
  @JsonKey(ignore: true)
  _$$_InnerDistrictModelCopyWith<_$_InnerDistrictModel> get copyWith =>
      throw _privateConstructorUsedError;
}
