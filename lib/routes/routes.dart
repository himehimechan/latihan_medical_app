import 'package:get/get.dart';
import 'package:latihan_medical_app/modules/form_screen/form_screen.dart';
import 'package:latihan_medical_app/modules/main_screen/main_screen.dart';
import 'package:latihan_medical_app/screens/form_screen.dart';
import 'package:latihan_medical_app/screens/main_screen.dart';


class Routes {
  static const String root = '/';
  static const String formScreen = '/form_screen';
}

final List<GetPage> routes = [
  GetPage(name: Routes.root, page: () => Main_screen(Get.find()), binding: Main_screenBindings()),
  GetPage(name: Routes.formScreen, page: () => Form_screen(Get.find()), binding: Form_screenBindings())
];