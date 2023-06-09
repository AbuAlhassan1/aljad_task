import 'package:aljad_task/views/constants/text.dart';
import 'package:aljad_task/views/home/home_page_wapper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RealEstateCard extends StatelessWidget {
  final int index;
  const RealEstateCard ({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {},
      child: Container(
        height: 200.h, width: double.infinity,
        margin: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 10.w),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0x1B000000), width: 1.w),
          borderRadius: BorderRadius.circular(5.w),
          boxShadow: const [BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            blurRadius: 10,
            spreadRadius: -5
          )]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5.w),
          child: Stack(
            children: [
              Center(
                child: SizedBox(
                  width: double.infinity, height: double.infinity,  
                  child: CachedNetworkImage(
                    imageUrl: realEstateController.realEstates[index].image.toString(),
                    errorWidget: (context, url, error) => Center(
                      child: CustomText.createCustomTajawalText(
                        text: "No Image",
                        color: Colors.white,
                        fontSize: 18
                      ),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity, height: double.infinity,
                padding: EdgeInsets.all(15.w),
                color: const Color(0x82000000),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText.createCustomTajawalText(
                      text: realEstateController.realEstates[index].title.toString(),
                      weight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18
                    ),
                    CustomText.createCustomTajawalText(
                      text: "${realEstateController.realEstates[index].price} IQD",
                      weight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18
                    ),
                    CustomText.createCustomTajawalText(
                      text: index.toString(),
                      weight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}