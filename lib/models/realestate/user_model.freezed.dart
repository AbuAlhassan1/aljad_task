// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get secondname => throw _privateConstructorUsedError;
  String? get commNameEn => throw _privateConstructorUsedError;
  String? get commNameAr => throw _privateConstructorUsedError;
  dynamic get phoneNumbers => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  RoleModel? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String? firstname,
      String? secondname,
      String? commNameEn,
      String? commNameAr,
      dynamic phoneNumbers,
      String? username,
      RoleModel? role});

  $RoleModelCopyWith<$Res>? get role;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = freezed,
    Object? secondname = freezed,
    Object? commNameEn = freezed,
    Object? commNameAr = freezed,
    Object? phoneNumbers = freezed,
    Object? username = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      secondname: freezed == secondname
          ? _value.secondname
          : secondname // ignore: cast_nullable_to_non_nullable
              as String?,
      commNameEn: freezed == commNameEn
          ? _value.commNameEn
          : commNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      commNameAr: freezed == commNameAr
          ? _value.commNameAr
          : commNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleModelCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $RoleModelCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? firstname,
      String? secondname,
      String? commNameEn,
      String? commNameAr,
      dynamic phoneNumbers,
      String? username,
      RoleModel? role});

  @override
  $RoleModelCopyWith<$Res>? get role;
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstname = freezed,
    Object? secondname = freezed,
    Object? commNameEn = freezed,
    Object? commNameAr = freezed,
    Object? phoneNumbers = freezed,
    Object? username = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      secondname: freezed == secondname
          ? _value.secondname
          : secondname // ignore: cast_nullable_to_non_nullable
              as String?,
      commNameEn: freezed == commNameEn
          ? _value.commNameEn
          : commNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      commNameAr: freezed == commNameAr
          ? _value.commNameAr
          : commNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as dynamic,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel with DiagnosticableTreeMixin implements _UserModel {
  const _$_UserModel(
      {required this.id,
      required this.firstname,
      required this.secondname,
      required this.commNameEn,
      required this.commNameAr,
      required this.phoneNumbers,
      required this.username,
      required this.role});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final String id;
  @override
  final String? firstname;
  @override
  final String? secondname;
  @override
  final String? commNameEn;
  @override
  final String? commNameAr;
  @override
  final dynamic phoneNumbers;
  @override
  final String? username;
  @override
  final RoleModel? role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserModel(id: $id, firstname: $firstname, secondname: $secondname, commNameEn: $commNameEn, commNameAr: $commNameAr, phoneNumbers: $phoneNumbers, username: $username, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('firstname', firstname))
      ..add(DiagnosticsProperty('secondname', secondname))
      ..add(DiagnosticsProperty('commNameEn', commNameEn))
      ..add(DiagnosticsProperty('commNameAr', commNameAr))
      ..add(DiagnosticsProperty('phoneNumbers', phoneNumbers))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('role', role));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.secondname, secondname) ||
                other.secondname == secondname) &&
            (identical(other.commNameEn, commNameEn) ||
                other.commNameEn == commNameEn) &&
            (identical(other.commNameAr, commNameAr) ||
                other.commNameAr == commNameAr) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumbers, phoneNumbers) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstname,
      secondname,
      commNameEn,
      commNameAr,
      const DeepCollectionEquality().hash(phoneNumbers),
      username,
      role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String id,
      required final String? firstname,
      required final String? secondname,
      required final String? commNameEn,
      required final String? commNameAr,
      required final dynamic phoneNumbers,
      required final String? username,
      required final RoleModel? role}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  String get id;
  @override
  String? get firstname;
  @override
  String? get secondname;
  @override
  String? get commNameEn;
  @override
  String? get commNameAr;
  @override
  dynamic get phoneNumbers;
  @override
  String? get username;
  @override
  RoleModel? get role;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RoleModel _$RoleModelFromJson(Map<String, dynamic> json) {
  return _RoleModel.fromJson(json);
}

/// @nodoc
mixin _$RoleModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleModelCopyWith<RoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleModelCopyWith<$Res> {
  factory $RoleModelCopyWith(RoleModel value, $Res Function(RoleModel) then) =
      _$RoleModelCopyWithImpl<$Res, RoleModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$RoleModelCopyWithImpl<$Res, $Val extends RoleModel>
    implements $RoleModelCopyWith<$Res> {
  _$RoleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoleModelCopyWith<$Res> implements $RoleModelCopyWith<$Res> {
  factory _$$_RoleModelCopyWith(
          _$_RoleModel value, $Res Function(_$_RoleModel) then) =
      __$$_RoleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_RoleModelCopyWithImpl<$Res>
    extends _$RoleModelCopyWithImpl<$Res, _$_RoleModel>
    implements _$$_RoleModelCopyWith<$Res> {
  __$$_RoleModelCopyWithImpl(
      _$_RoleModel _value, $Res Function(_$_RoleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_RoleModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoleModel with DiagnosticableTreeMixin implements _RoleModel {
  const _$_RoleModel({required this.name});

  factory _$_RoleModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoleModelFromJson(json);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoleModel(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoleModel'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoleModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoleModelCopyWith<_$_RoleModel> get copyWith =>
      __$$_RoleModelCopyWithImpl<_$_RoleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoleModelToJson(
      this,
    );
  }
}

abstract class _RoleModel implements RoleModel {
  const factory _RoleModel({required final String name}) = _$_RoleModel;

  factory _RoleModel.fromJson(Map<String, dynamic> json) =
      _$_RoleModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_RoleModelCopyWith<_$_RoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
