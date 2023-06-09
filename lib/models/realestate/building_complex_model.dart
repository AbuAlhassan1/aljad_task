import 'package:aljad_task/models/realestate/inner_district_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'building_complex_model.freezed.dart';
part 'building_complex_model.g.dart';

@Freezed()
class BuildingComplexModel with _$BuildingComplexModel {
  const factory BuildingComplexModel({
    required String? buildingComplexId,
    required String? image,
    required String? commNameAr,
    required String? commNameEn,
    required String? lng,
    required String? lat,
    required InnerDistrictModel? district,
  }) = _BuildingComplexModel;


  factory BuildingComplexModel.fromJson(Map<String, dynamic> json) => _$BuildingComplexModelFromJson(json);
}