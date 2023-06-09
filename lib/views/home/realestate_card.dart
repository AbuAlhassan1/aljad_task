import 'package:aljad_task/views/home/home_page_wapper.dart';
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
        child: Center(
          child: Text(realEstateController.realEstates[index].title.toString()),
        ),
      ),
    );
  }
}