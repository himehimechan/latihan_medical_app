import 'package:get/get.dart';

import 'package:latihan_medical_app/modules/main_screen/main_screen.dart';

class Main_screenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Main_screenController());
  }

  @override
  void dispose() {
    Get.delete<Main_screenController>();
  }
}