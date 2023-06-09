import 'package:aljad_task/models/realestate/inner_city_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inner_district_model.freezed.dart';
part 'inner_district_model.g.dart';

@Freezed()
class InnerDistrictModel with _$InnerDistrictModel {
  const factory InnerDistrictModel({
    required String? id,
    required String? arName,
    required String? enName,
    required InnerCityModel? city
  }) = _InnerDistrictModel;


  factory InnerDistrictModel.fromJson(Map<String, dynamic> json) => _$InnerDistrictModelFromJson(json);
}