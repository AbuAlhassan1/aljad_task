// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inner_district_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InnerDistrictModel _$$_InnerDistrictModelFromJson(
        Map<String, dynamic> json) =>
    _$_InnerDistrictModel(
      id: json['id'] as String?,
      arName: json['arName'] as String?,
      enName: json['enName'] as String?,
      city: json['city'] == null
          ? null
          : InnerCityModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InnerDistrictModelToJson(
        _$_InnerDistrictModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'arName': instance.arName,
      'enName': instance.enName,
      'city': instance.city,
    };
