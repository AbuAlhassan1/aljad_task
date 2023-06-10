import 'package:aljad_task/views/constants/text.dart';
import 'package:aljad_task/views/home/home_page_wapper.dart';
import 'package:aljad_task/views/realestate/map_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:latlong2/latlong.dart';

class RealEstatePageWrapper extends StatelessWidget {
  final int index;
  const RealEstatePageWrapper({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Map -- S t a r t --
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.red,
              child: MapWidget(location: LatLng(realEstateController.realEstates[index].lat!, realEstateController.realEstates[index].lng!))
            ),
          ),
          // Map -- E n d --

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title & Views -- S t a r t --
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText.createCustomTajawalText(
                          overflow: TextOverflow.ellipsis,
                          text: realEstateController.realEstates[index].title.toString(),
                          weight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16
                        ),
    
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: CustomText.createCustomTajawalText(
                                overflow: TextOverflow.ellipsis,
                                text: "${realEstateController.realEstates[index].views}",
                                weight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 16
                              ),
                            ),
                            SizedBox(width: 5.w),
                            const Icon(Icons.remove_red_eye_outlined, color: Colors.grey)
                          ],
                        ),
                      ],
                    ),
                    // Title & Views -- E n d --
    
                    SizedBox(height: 5.h),
    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            realEstateController.realEstates[index].avenueName != null ?
                            CustomText.createCustomTajawalText(
                              overflow: TextOverflow.ellipsis,
                              text: "${realEstateController.realEstates[index].avenueName} ",
                              weight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 16
                            ) : const SizedBox(),
    
                            realEstateController.realEstates[index].nearestPoint != null ?
                            CustomText.createCustomTajawalText(
                              overflow: TextOverflow.ellipsis,
                              text: "/ ${realEstateController.realEstates[index].nearestPoint}",
                              weight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 16
                            ) : const SizedBox(),
    
                            realEstateController.realEstates[index].avenueName == null &&
                            realEstateController.realEstates[index].nearestPoint == null ?
                            SizedBox(width: 0.w,) : SizedBox(width: 10.w),
    
                            CustomText.createCustomTajawalText(
                              overflow: TextOverflow.ellipsis,
                              text: "${realEstateController.realEstates[index].city!.name} / ${realEstateController.realEstates[index].district!.name}",
                              weight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 16
                            ),
    
                          ],
                        ),
                      ],
                    ),
    
                    SizedBox(height: 5.h),
    
                    // Category, SubCategory & Expiry Date -- S t a r t --
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText.createCustomTajawalText(
                          overflow: TextOverflow.ellipsis,
                          text: "${realEstateController.realEstates[index].category!.name} / ${realEstateController.realEstates[index].subcategory!.name}",
                          weight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 16
                        ),
                        realEstateController.realEstates[index].expiresAt != null ?
                        CustomText.createCustomTajawalText(
                          overflow: TextOverflow.ellipsis,
                          text: "exp at: ${realEstateController.realEstates[index].expiresAt}",
                          weight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 16
                        ) : const SizedBox(),
                      ],
                    ),
                    // Category, SubCategory & Expiry Date -- E n d --
    
                    SizedBox(height: 5.h),
    
                    CustomText.createCustomTajawalText(
                      overflow: TextOverflow.ellipsis,
                      text: "د.ع ${realEstateController.realEstates[index].price}",
                      weight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}