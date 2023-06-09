import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';

@Freezed()
class CityModel with _$CityModel {
  const factory CityModel({
    required String id,
    required String name
  }) = _CityModel;


  factory CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);
}