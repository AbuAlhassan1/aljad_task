import 'package:aljad_task/views/constants/text.dart';
import 'package:aljad_task/views/home/home_page_wapper.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class RealEstateCard extends StatelessWidget {
  final int index;
  const RealEstateCard ({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/realestate/$index'),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            // Post Header -- S t a r t --
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // User Avatar Image & Full Name -- S t a r t --
                  Row(
                    children: [
                      CircleAvatar(radius: 25.w, backgroundColor: const Color(0x609E9E9E)),
                      SizedBox(width: 15.w),
                      CustomText.createCustomTajawalText(
                        overflow: TextOverflow.ellipsis,
                        text: "${realEstateController.realEstates[index].user!.firstname} ${realEstateController.realEstates[index].user!.secondname}",
                        weight: FontWeight.w600,
                        fontSize: 16
                      )
                    ],
                  ),
                  // User Avatar Image & Full Name -- E n d --
    
                  const Icon(Icons.more_vert_outlined)
                ],
              ),
            ),
            // Post Header -- E n d --
    
            SizedBox(height: 10.h),
    
            // Real Estate Image -- S t a r t --
            Row(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: PageView.builder(
                      itemCount: realEstateController.realEstates[index].imagesCount,
                      itemBuilder: (context, i) => CachedNetworkImage(
                        imageUrl: realEstateController.realEstates[index].image.toString(),
                        errorWidget: (context, url, error) => Center(
                          child: CustomText.createCustomTajawalText(
                            overflow: TextOverflow.ellipsis,
                            text: "No Image",
                            color: Colors.white,
                            fontSize: 18
                          ),
                        ),
                        fit: BoxFit.cover,
                      ),
                    )
                  ),
                ),
              ],
            ),
            // Real Estate Image -- E n d --
    
            SizedBox(height: 10.h),
    
            // Accessbilty Bar -- S t a r t --
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/heart.svg', color: const Color(0x92000000)),
                      SizedBox(width: 20.w),
                      SvgPicture.asset('assets/svg/paper-plane.svg', color: const Color(0x92000000)),
                    ],
                  ),
            
                  SvgPicture.asset('assets/svg/triangle-warning.svg', color: const Color(0x92000000)),
                ],
              ),
            ),
            // Accessbilty Bar -- E n d --
    
            SizedBox(height: 15.h),
    
            // Real Estate Info -- S t a r t --
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
            // Real Estate Info -- E n d --
          ],
        ),
      ),
    );
  }
}