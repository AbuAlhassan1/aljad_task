// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building_complex_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuildingComplexModel _$$_BuildingComplexModelFromJson(
        Map<String, dynamic> json) =>
    _$_BuildingComplexModel(
      buildingComplexId: json['buildingComplexId'] as String?,
      image: json['image'] as String?,
      commNameAr: json['commNameAr'] as String?,
      commNameEn: json['commNameEn'] as String?,
      lng: json['lng'] as String?,
      lat: json['lat'] as String?,
      district: json['district'] == null
          ? null
          : InnerDistrictModel.fromJson(
              json['district'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BuildingComplexModelToJson(
        _$_BuildingComplexModel instance) =>
    <String, dynamic>{
      'buildingComplexId': instance.buildingComplexId,
      'image': instance.image,
      'commNameAr': instance.commNameAr,
      'commNameEn': instance.commNameEn,
      'lng': instance.lng,
      'lat': instance.lat,
      'district': instance.district,
    };
