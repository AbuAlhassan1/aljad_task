import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'district_model.freezed.dart';
part 'district_model.g.dart';

@Freezed()
class DistrictModel with _$DistrictModel {
  const factory DistrictModel({
    required String id,
    required String name
  }) = _DistrictModel;


  factory DistrictModel.fromJson(Map<String, dynamic> json) => _$DistrictModelFromJson(json);
}