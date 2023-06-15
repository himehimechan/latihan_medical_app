import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:latihan_medical_app/models/banner.dart';
import 'package:latihan_medical_app/models/user.dart';

import 'package:latihan_medical_app/modules/home_page/home_page.dart';
import 'package:latihan_medical_app/utils/api_request_status.dart';
import 'package:latihan_medical_app/utils/function.dart';

import '../../utils/theme_controller.dart';

class Home_pageController extends GetxController {

  final Home_pageService _service;
  var pageStatus = APIRequestStatus.loaded.obs;
  var banners = <Data>[].obs;
  var userData = DataUser().obs;
  ThemeController themeController = Get.find();

  Home_pageController(this._service);

  @override
  void onInit() {
    // loadData();
    super.onInit();
  }

  Future<void> loadData() async {
    try {
      pageStatus.value = APIRequestStatus.loading;
      bannerData? banner = await _service.getBanner();
      DataUser? dataUser = await _service.getUser();
      debugPrint(banner?.data![0].name);
      pageStatus.value = APIRequestStatus.loaded;
      if(banner!=null) {
        banners.value = banner.data!;
      } else {
        pageStatus.value = Functions.checkErrorPopup("Gagal mendapatkan data");
      }
      if(dataUser!=null) {
        userData.value = dataUser;
      }
    } catch (e) {
      pageStatus.value = Functions.checkErrorPopup(e);
    }
  }

}