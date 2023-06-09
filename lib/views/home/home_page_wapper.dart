import 'dart:developer';
import 'package:aljad_task/controllers/realestate_controller.dart';
import 'package:aljad_task/views/home/realestate_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pagination_flutter/pagination.dart';

final RealEstate realEstateController = RealEstate();

class HomePageWrapper extends StatefulWidget {
  const HomePageWrapper({super.key});

  @override
  State<HomePageWrapper> createState() => _HomePageWrapperState();
}

class _HomePageWrapperState extends State<HomePageWrapper> {

  final ScrollController scrollController = ScrollController();
  final PagingController pagingController = PagingController(firstPageKey: 1);

  @override
  void initState() {
    realEstateController.getRealEstates(1, context);
    realEstateController.getCount(context);
    super.initState();

    scrollController.addListener(() {
      if(scrollController.position.atEdge && scrollController.position.pixels != 0){
        realEstateController.getRealEstates(realEstateController.pageNumber + 1, context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Observer(
              builder: (context) => Text(
                realEstateController.count.toString()
              ),
            ),

            TextButton(
              onPressed: () async {
                realEstateController.increaceCount(context);
              },
              child: const Text("Increace Count ++")
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xFFFAFAFA),
      body: Column(
        children: [
          // Header [ App Bar ] -- S t a r t --
          Container(
            width: double.infinity, height: 100.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              border: Border(bottom: BorderSide(color: const Color(0x1B000000), width: 1.w)),
              boxShadow: const [BoxShadow(
                color: Color.fromARGB(63, 0, 0, 0),
                blurRadius: 10,
                spreadRadius: -5
              )]
            ),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Builder(
                    builder: (ctx) => GestureDetector(
                      onTap: () => Scaffold.maybeOf(ctx)!.openDrawer(),
                      child: const Icon(Icons.menu)
                    ),
                  )
                ],
              ),
            ),
          ),
          // Header [ App Bar ] -- E n d --

          // Main Content -- S t a r t --
          Expanded(
            child: Observer(
              builder: (context) => ListView.builder(
                controller: scrollController,
                itemCount: realEstateController.realEstates.length + 1,
                padding: EdgeInsets.symmetric(vertical: 10.h),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => index == realEstateController.realEstates.length ? Observer(
                  builder: (context) => SizedBox(
                    child: realEstateController.isScrollLoading ? const Center(child: CircularProgressIndicator()) : null,
                  ),
                )
                : RealEstateCard(index: index)
              ),
            )
          ),
          // Main Content -- E n d --

          // Pagination Widget -- S t a r t --
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Pagination(
                  numOfPages: 100,
                  activeBtnStyle: const ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                  activeTextStyle: const TextStyle(),
                  inactiveBtnStyle: const ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.zero)),
                  inactiveTextStyle: const TextStyle(),
                  onPageChanged: (int page) async {
                    await realEstateController.getRealEstates(page, context);
                  },
                  pagesVisible: 4,
                  selectedPage: 1,
                  spacing: 0.w,
                ),
              ),
            ],
          )
          // Pagination Widget -- E n d --
        ],
      )
    );
  }
}