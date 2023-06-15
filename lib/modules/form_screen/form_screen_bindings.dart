import 'package:get/get.dart';

import 'package:latihan_medical_app/modules/form_screen/form_screen.dart';

class Form_screenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Form_screenController(Form_screenService()));
  }

  @override
  void dispose() {
    Get.delete<Form_screenController>();
  }
}