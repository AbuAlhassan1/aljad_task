import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@Freezed()
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String? firstname,
    required String? secondname,
    required String? commNameEn,
    required String? commNameAr,
    required String? phoneNumbers,
    required String? username,
    required RoleModel? role,
  }) = _UserModel;


  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@Freezed()
class RoleModel with _$RoleModel {
  const factory RoleModel({
    required String name
  }) = _RoleModel;


  factory RoleModel.fromJson(Map<String, dynamic> json) => _$RoleModelFromJson(json);
}