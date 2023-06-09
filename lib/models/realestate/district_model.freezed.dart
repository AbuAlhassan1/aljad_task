// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DistrictModel _$DistrictModelFromJson(Map<String, dynamic> json) {
  return _DistrictModel.fromJson(json);
}

/// @nodoc
mixin _$DistrictModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistrictModelCopyWith<DistrictModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictModelCopyWith<$Res> {
  factory $DistrictModelCopyWith(
          DistrictModel value, $Res Function(DistrictModel) then) =
      _$DistrictModelCopyWithImpl<$Res, DistrictModel>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$DistrictModelCopyWithImpl<$Res, $Val extends DistrictModel>
    implements $DistrictModelCopyWith<$Res> {
  _$DistrictModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DistrictModelCopyWith<$Res>
    implements $DistrictModelCopyWith<$Res> {
  factory _$$_DistrictModelCopyWith(
          _$_DistrictModel value, $Res Function(_$_DistrictModel) then) =
      __$$_DistrictModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_DistrictModelCopyWithImpl<$Res>
    extends _$DistrictModelCopyWithImpl<$Res, _$_DistrictModel>
    implements _$$_DistrictModelCopyWith<$Res> {
  __$$_DistrictModelCopyWithImpl(
      _$_DistrictModel _value, $Res Function(_$_DistrictModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_DistrictModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DistrictModel with DiagnosticableTreeMixin implements _DistrictModel {
  const _$_DistrictModel({required this.id, required this.name});

  factory _$_DistrictModel.fromJson(Map<String, dynamic> json) =>
      _$$_DistrictModelFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DistrictModel(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DistrictModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DistrictModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DistrictModelCopyWith<_$_DistrictModel> get copyWith =>
      __$$_DistrictModelCopyWithImpl<_$_DistrictModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DistrictModelToJson(
      this,
    );
  }
}

abstract class _DistrictModel implements DistrictModel {
  const factory _DistrictModel(
      {required final String id,
      required final String name}) = _$_DistrictModel;

  factory _DistrictModel.fromJson(Map<String, dynamic> json) =
      _$_DistrictModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DistrictModelCopyWith<_$_DistrictModel> get copyWith =>
      throw _privateConstructorUsedError;
}
