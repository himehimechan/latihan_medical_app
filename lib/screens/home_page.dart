import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:latihan_medical_app/config/config.dart';

import 'package:latihan_medical_app/modules/home_page/home_page.dart';
import 'package:latihan_medical_app/widgets/button.dart';
import 'package:latihan_medical_app/widgets/inputFieldPrefix.dart';

import '../app.dart';
import '../config/themes.dart';
import '../widgets/body_builder.dart';

class Home_page extends StatelessWidget {
  final Home_pageController home_page_controller;

  const Home_page(this.home_page_controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => BodyBuilder(
          apiRequestStatus: home_page_controller.pageStatus.value,
          child: _bodyHomePage(),
          reload: () => {home_page_controller.loadData()},
        ));
  }

  Widget _bodyHomePage() {
    return Padding(padding: EdgeInsets.only(left: 28.w, right: 21.w, top: 25.h, ),
    child:
    ListView(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      home_page_controller.themeController.toggleThemeMode();
                    },
                    child: Text(
                      StringValue.hello,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Gap(7.h),
                  Text(
                    "Teguh Putra Nugraha",
                    style: TextStyle(
                      fontSize: 27.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 49.h,
              width: 55.w,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: Image.asset(
                      AssetsValue.profileExample,
                      height: 48.0,
                      width: 48.0,
                    ),
                  ),
                  Positioned(
                      top: 0,
                      right: 6,
                      child: Container(
                        height: 18.h,
                        width: 18.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffffffff), width: 3.w),
                          color: const Color(0xff1C6BA4),
                          shape: BoxShape.circle,
                        ),
                      )
                  )
                ],
              ),
            )
          ],
        ),
        Gap(24.h),
        InputFieldPrefix(labelText: StringValue.searchMedical,
            prefixIcon: const Icon(FeatherIcons.search),
            textSize: 12.sp, textColor: ColorsValue.darkPrimary,
            fontWeight: FontWeight.w400,
            hintColor: ColorsValue.hintTextColor,
            suffixIcon: const Icon(FeatherIcons.filter),
            isUnderlinedBorder: false,
            fillColor: ColorsValue.fillColorInputTextColor,
            validate: (text) {
              return null;
            }),
        Gap(23.h),
        Text(
          StringValue.services,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w700
          ),
        ),
        Gap(12.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              elevation: 0,
              color: ColorsValue.cardServices1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: SizedBox(
                height: 71.h,
                width: 71.w,
                child: SvgPicture.asset(
                  AssetsValue.iconService1,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  height: 34.h,
                  width: 25.w,
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: ColorsValue.cardServices2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: SizedBox(
                height: 71.h,
                width: 71.w,
                child: SvgPicture.asset(
                  AssetsValue.iconService2,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  height: 34.h,
                  width: 25.w,
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: ColorsValue.cardServices3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: SizedBox(
                height: 71.h,
                width: 71.w,
                child: SvgPicture.asset(
                  AssetsValue.iconService3,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  height: 34.h,
                  width: 25.w,
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: ColorsValue.cardServices4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: SizedBox(
                height: 71.h,
                width: 71.w,
                child: SvgPicture.asset(
                  AssetsValue.iconService4,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  height: 34.h,
                  width: 25.w,
                ),
              ),
            )
          ],
        ),
        Gap(30.h),
        Card(
          elevation: 0,
          color: ColorsValue.cardServices1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28)
          ),
          child: SizedBox(
            width: Get.width,
            height: 170.h,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24, right: 7
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get the Best Medical Service",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      Gap(10.h),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing ",
                        style: TextStyle(
                            color: Color(0xff4A545E),
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  )),
                  Padding(padding: EdgeInsets.only(top: 17),child: Image.asset(
                    AssetsValue.doctorImage,
                    height: 182.h,
                    width: 119.w,
                  ),)
                ],
              ),
            ),
          ),
        ),
        Gap(30.h),
        Text(
          StringValue.upcomingAppointments,
          style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w700
          ),
        ),
        Gap(14.h),
        Container(
            height: 121.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28)
                  ),
                  color: Color(0xff1C6BA4),
                  elevation: 0,
                  child: Container(
                    height: Get.height,
                    width: 282.w,
                    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26)
                          ),
                          color: Color(0xff24FFFFFF),
                          elevation: 0,
                          child: Container(
                            height: Get.height,
                            width: 71.w,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "12",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                                Gap(4.h),
                                Text(
                                  "Tue",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Gap(16.w),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "09:30 AM",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: Color(0xffFFFFFF)
                              ),
                            ),
                            Gap(2.h),
                            Text(
                              "Dr. Mim Akhter",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 19.sp,
                                  color: Color(0xffFFFFFF)
                              ),
                            ),
                            Gap(2.h),
                            Text(
                              "Depression",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                  color: Color(0xffA6FFFFFF)
                              ),
                            ),
                          ],
                        ),),
                        Padding(padding: EdgeInsets.only(top: 15, right: 10),
                        child: SvgPicture.asset(
                          AssetsValue.option,
                        ),)
                      ],
                    ),
                  ),
                ),
                Gap(12.w),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28)
                  ),
                  color: Color(0xffFAF0DB),
                  elevation: 0,
                  child: Container(
                    height: Get.height,
                    width: 282.w,
                    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26)
                          ),
                          color: Color(0xffE09F1F),
                          elevation: 0,
                          child: Container(
                            height: Get.height,
                            width: 71.w,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "12",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w800
                                  ),
                                ),
                                Gap(4.h),
                                Text(
                                  "Tue",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Gap(16.w),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "09:30 AM",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: Color(0xff000000)
                              ),
                            ),
                            Gap(2.h),
                            Text(
                              "Dr. Mim Akhter",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 19.sp,
                                  color: Color(0xff000000)
                              ),
                            ),
                            Gap(2.h),
                            Text(
                              "Depression",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                  color: Color(0xff000000)
                              ),
                            ),
                          ],
                        ),),
                        Padding(padding: EdgeInsets.only(top: 15, right: 10),
                        child: SvgPicture.asset(
                          AssetsValue.option,
                          color: Color(0xff000000),
                        ),)
                      ],
                    ),
                  ),
                )
              ],
            )
        ),
      ],
    )
    );
  }
}
