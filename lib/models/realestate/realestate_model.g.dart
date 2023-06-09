// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'realestate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RealEstateModel _$$_RealEstateModelFromJson(Map<String, dynamic> json) =>
    _$_RealEstateModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      realestatePlanSubscription:
          json['realestatePlanSubscription'] as Map<String, dynamic>?,
      area: json['area'] as int?,
      age: json['age'] as int?,
      nofLivingRooms: json['nofLivingRooms'] as int?,
      lotNumber: json['lotNumber'] as String?,
      nofBedrooms: json['nofBedrooms'] as int?,
      nofBathRooms: json['nofBathRooms'] as int?,
      parkingCapacity: json['parkingCapacity'] as int?,
      offerType: json['offerType'] as String?,
      price: json['price'] as int?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      createdAt: json['createdAt'] as String?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      district: json['district'] == null
          ? null
          : DistrictModel.fromJson(json['district'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : SubCategoryModel.fromJson(
              json['subcategory'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool?,
      isSeen: json['isSeen'] as bool?,
      isSold: json['isSold'] as bool?,
      myRealestate: json['myRealestate'] as bool?,
      buildingComplexId: json['buildingComplexId'] as String?,
      buildingComplex: json['buildingComplex'] == null
          ? null
          : BuildingComplexModel.fromJson(
              json['buildingComplex'] as Map<String, dynamic>),
      avenueName: json['avenueName'] as String?,
      nearestPoint: json['nearestPoint'] as String?,
      expiresAt: json['expiresAt'] as String?,
      views: json['views'] as int?,
      streetNumber: json['streetNumber'] as String?,
      buildingNumber: json['buildingNumber'] as String?,
      isSample: json['isSample'] as bool?,
      isExpired: json['isExpired'] as bool?,
      type: json['type'] as String?,
      isUrgent: json['isUrgent'] as bool?,
      imagesCount: json['imagesCount'] as int?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_RealEstateModelToJson(_$_RealEstateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'realestatePlanSubscription': instance.realestatePlanSubscription,
      'area': instance.area,
      'age': instance.age,
      'nofLivingRooms': instance.nofLivingRooms,
      'lotNumber': instance.lotNumber,
      'nofBedrooms': instance.nofBedrooms,
      'nofBathRooms': instance.nofBathRooms,
      'parkingCapacity': instance.parkingCapacity,
      'offerType': instance.offerType,
      'price': instance.price,
      'lat': instance.lat,
      'lng': instance.lng,
      'createdAt': instance.createdAt,
      'user': instance.user,
      'district': instance.district,
      'city': instance.city,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'isFavorite': instance.isFavorite,
      'isSeen': instance.isSeen,
      'isSold': instance.isSold,
      'myRealestate': instance.myRealestate,
      'buildingComplexId': instance.buildingComplexId,
      'buildingComplex': instance.buildingComplex,
      'avenueName': instance.avenueName,
      'nearestPoint': instance.nearestPoint,
      'expiresAt': instance.expiresAt,
      'views': instance.views,
      'streetNumber': instance.streetNumber,
      'buildingNumber': instance.buildingNumber,
      'isSample': instance.isSample,
      'isExpired': instance.isExpired,
      'type': instance.type,
      'isUrgent': instance.isUrgent,
      'imagesCount': instance.imagesCount,
      'image': instance.image,
    };
