import 'package:aljad_task/models/realestate/building_complex_model.dart';
import 'package:aljad_task/models/realestate/category_model.dart';
import 'package:aljad_task/models/realestate/city_model.dart';
import 'package:aljad_task/models/realestate/district_model.dart';
import 'package:aljad_task/models/realestate/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'realestate_model.freezed.dart';
part 'realestate_model.g.dart';

@Freezed()
class RealEstateModel with _$RealEstateModel {
  const factory RealEstateModel({
    required String? id,
    required String? title,
    required Map<String, dynamic>? realestatePlanSubscription,
    required int? area,
    required int? age,
    required int? nofLivingRooms,
    required String? lotNumber,
    required int? nofBedrooms,
    required int? nofBathRooms,
    required int? parkingCapacity,
    required String? offerType,
    required int? price,
    required double? lat,
    required double? lng,
    required String? createdAt,
    required UserModel? user, // //
    required DistrictModel? district, // //
    required CityModel? city, // //
    required CategoryModel? category, // //
    required SubCategoryModel? subcategory, // //
    required bool? isFavorite,
    required bool? isSeen,
    required bool? isSold,
    required bool? myRealestate,
    required String? buildingComplexId,
    required BuildingComplexModel? buildingComplex, // //
    required String? avenueName,
    required String? nearestPoint,
    required String? expiresAt,
    required int? views,
    required String? streetNumber,
    required String? buildingNumber,
    required bool? isSample,
    required bool? isExpired,
    required String? type,
    required bool? isUrgent,
    required int? imagesCount,
    required String? image,
  }) = _RealEstateModel;

  factory RealEstateModel.fromJson(Map<String, dynamic> json) => _$RealEstateModelFromJson(json);
}