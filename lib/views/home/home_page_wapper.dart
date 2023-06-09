import 'package:aljad_task/controllers/realestate_controller.dart';
import 'package:aljad_task/views/home/realestate_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pagination_flutter/pagination.dart';

final RealEstate realEstateController = RealEstate();

class HomePageWrapper extends StatefulWidget {
  const HomePageWrapper({super.key});

  @override
  State<HomePageWrapper> createState() => _HomePageWrapperState();
}

class _HomePageWrapperState extends State<HomePageWrapper> {

  @override
  void initState() {
    realEstateController.getRealEstates(1, context);
    realEstateController.getCount(context);
    super.initState();
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
              child: Text("Increace Count ++")
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

          Expanded(
            child: Observer(
              builder: (context) => ListView.builder(
                itemCount: realEstateController.realEstates.length,
                padding: EdgeInsets.symmetric(vertical: 10.h),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => RealEstateCard(index: index)
              ),
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Pagination(
                  numOfPages: 10,
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
        ],
      )
    );
  }
}