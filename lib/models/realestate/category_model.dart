import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@Freezed()
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String id,
    required String name
  }) = _CategoryModel;


  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}

@Freezed()
class SubCategoryModel with _$SubCategoryModel {
  const factory SubCategoryModel({
    required String id,
    required String name
  }) = _SubCategoryModel;


  factory SubCategoryModel.fromJson(Map<String, dynamic> json) => _$SubCategoryModelFromJson(json);
}