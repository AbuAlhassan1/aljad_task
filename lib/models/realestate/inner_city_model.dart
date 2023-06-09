import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inner_city_model.freezed.dart';
part 'inner_city_model.g.dart';

@Freezed()
class InnerCityModel with _$InnerCityModel {
  const factory InnerCityModel({
    required String? id,
    required String? arName,
    required String? enName,
  }) = _InnerCityModel;


  factory InnerCityModel.fromJson(Map<String, dynamic> json) => _$InnerCityModelFromJson(json);
}