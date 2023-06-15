import 'package:get/get.dart';

import 'package:latihan_medical_app/modules/home_page/home_page.dart';

class Home_pageBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Home_pageController(Home_pageService()));
  }

  @override
  void dispose() {
    Get.delete<Home_pageController>();
  }
}