// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      firstname: json['firstname'] as String?,
      secondname: json['secondname'] as String?,
      commNameEn: json['commNameEn'] as String?,
      commNameAr: json['commNameAr'] as String?,
      phoneNumbers: json['phoneNumbers'],
      username: json['username'] as String?,
      role: json['role'] == null
          ? null
          : RoleModel.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'secondname': instance.secondname,
      'commNameEn': instance.commNameEn,
      'commNameAr': instance.commNameAr,
      'phoneNumbers': instance.phoneNumbers,
      'username': instance.username,
      'role': instance.role,
    };

_$_RoleModel _$$_RoleModelFromJson(Map<String, dynamic> json) => _$_RoleModel(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_RoleModelToJson(_$_RoleModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
