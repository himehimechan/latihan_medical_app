import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:latihan_medical_app/config/config.dart';
import 'package:latihan_medical_app/modules/home_page/home_page.dart';

import 'package:latihan_medical_app/modules/main_screen/main_screen.dart';
import 'package:latihan_medical_app/screens/home_page.dart';
import 'package:latihan_medical_app/utils/dialogs.dart';
import 'package:latihan_medical_app/utils/theme_controller.dart';

class Main_screen extends StatelessWidget {
  final Main_screenController main_screen_controller;

  const Main_screen(this.main_screen_controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Obx(() => Scaffold(
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: main_screen_controller.pageController,
            onPageChanged: main_screen_controller.onPageChanged,
            children: <Widget>[
              Home_page(Get.put(Home_pageController(Home_pageService()))),
              Container(),
              Container(),
              Container(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey[500],
            elevation: 20,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.home),
                label: StringValue.home,
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.calendar),
                label: StringValue.schedule,
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.file),
                label: StringValue.report,
              ),
              BottomNavigationBarItem(
                icon: Icon(FeatherIcons.bell),
                label: StringValue.notifications,
              ),
            ],
            onTap: (index) async {
              debugPrint("debugIndex: $index");
              main_screen_controller.navigationTapped(index);

              // if(index == 2 && mainScreenController.token.value == "") {
              //   Get.offNamed(Routes.loginScreen);
              // } else {
              //   mainScreenController.navigationTapped(index);
              // }
            },
            currentIndex: main_screen_controller.indexButtonNavigation.value,
          ),
        )),
        onWillPop: () => Dialogs().showExitDialog(context));
  }

}