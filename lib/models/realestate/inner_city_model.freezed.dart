// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inner_city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InnerCityModel _$InnerCityModelFromJson(Map<String, dynamic> json) {
  return _InnerCityModel.fromJson(json);
}

/// @nodoc
mixin _$InnerCityModel {
  String? get id => throw _privateConstructorUsedError;
  String? get arName => throw _privateConstructorUsedError;
  String? get enName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnerCityModelCopyWith<InnerCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerCityModelCopyWith<$Res> {
  factory $InnerCityModelCopyWith(
          InnerCityModel value, $Res Function(InnerCityModel) then) =
      _$InnerCityModelCopyWithImpl<$Res, InnerCityModel>;
  @useResult
  $Res call({String? id, String? arName, String? enName});
}

/// @nodoc
class _$InnerCityModelCopyWithImpl<$Res, $Val extends InnerCityModel>
    implements $InnerCityModelCopyWith<$Res> {
  _$InnerCityModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InnerCityModelCopyWith<$Res>
    implements $InnerCityModelCopyWith<$Res> {
  factory _$$_InnerCityModelCopyWith(
          _$_InnerCityModel value, $Res Function(_$_InnerCityModel) then) =
      __$$_InnerCityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? arName, String? enName});
}

/// @nodoc
class __$$_InnerCityModelCopyWithImpl<$Res>
    extends _$InnerCityModelCopyWithImpl<$Res, _$_InnerCityModel>
    implements _$$_InnerCityModelCopyWith<$Res> {
  __$$_InnerCityModelCopyWithImpl(
      _$_InnerCityModel _value, $Res Function(_$_InnerCityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? arName = freezed,
    Object? enName = freezed,
  }) {
    return _then(_$_InnerCityModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InnerCityModel
    with DiagnosticableTreeMixin
    implements _InnerCityModel {
  const _$_InnerCityModel(
      {required this.id, required this.arName, required this.enName});

  factory _$_InnerCityModel.fromJson(Map<String, dynamic> json) =>
      _$$_InnerCityModelFromJson(json);

  @override
  final String? id;
  @override
  final String? arName;
  @override
  final String? enName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InnerCityModel(id: $id, arName: $arName, enName: $enName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InnerCityModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('arName', arName))
      ..add(DiagnosticsProperty('enName', enName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnerCityModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.arName, arName) || other.arName == arName) &&
            (identical(other.enName, enName) || other.enName == enName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, arName, enName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnerCityModelCopyWith<_$_InnerCityModel> get copyWith =>
      __$$_InnerCityModelCopyWithImpl<_$_InnerCityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InnerCityModelToJson(
      this,
    );
  }
}

abstract class _InnerCityModel implements InnerCityModel {
  const factory _InnerCityModel(
      {required final String? id,
      required final String? arName,
      required final String? enName}) = _$_InnerCityModel;

  factory _InnerCityModel.fromJson(Map<String, dynamic> json) =
      _$_InnerCityModel.fromJson;

  @override
  String? get id;
  @override
  String? get arName;
  @override
  String? get enName;
  @override
  @JsonKey(ignore: true)
  _$$_InnerCityModelCopyWith<_$_InnerCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
