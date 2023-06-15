import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_medical_app/config/config.dart';
import 'package:latihan_medical_app/utils/prefs.dart';

import '../app.dart';

class ThemeController extends GetxController {

  var theme = ThemeConfig.lightTheme.obs;

  Future<void> toggleThemeMode() async {
    String r = await Prefs.getString(StringValue.theme) ?? 'light';

    if (r == 'dark') {
      setTheme(ThemeConfig.lightTheme, 'light');
    } else {
      setTheme(ThemeConfig.darkTheme, 'dark');
    }
    if (kDebugMode) {
      print("theme: $r");
    }
  }

  @override
  Future<void> onInit() async {
    checkTheme();
    super.onInit();
  }

  // change the Theme in the provider and SharedPreferences
  void setTheme(value, c) {
    theme.value = value;
    Get.changeTheme(const App().themeData(value));
    Prefs.setString(StringValue.theme, c);
  }

  Future<ThemeData> checkTheme() async {
    ThemeData t;
    String r = await Prefs.getString(StringValue.theme) ?? 'light';
    if (kDebugMode) {
      print("theme: $r");
    }

    if (r == 'light') {
      t = ThemeConfig.lightTheme;
      setTheme(t, 'light');
    } else {
      t = ThemeConfig.darkTheme;
      setTheme(t, 'dark');
    }

    return t;
  }
}