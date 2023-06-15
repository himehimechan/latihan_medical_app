import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:latihan_medical_app/config/config.dart';
import 'package:latihan_medical_app/routes/routes.dart';
import 'package:latihan_medical_app/utils/theme_controller.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Get.put(ThemeController());
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: StringValue.appTitle,
            theme: themeData(ThemeConfig.lightTheme),
            darkTheme: themeData(ThemeConfig.darkTheme),
            themeMode: ThemeMode.system,
            initialRoute: Routes.root,
            getPages: routes,
          );
        },
    );
  }

  // Apply font to our app's theme
  ThemeData themeData(ThemeData theme) {
    return theme.copyWith(
      textTheme: GoogleFonts.nunitoSansTextTheme(
        theme.textTheme,
      ),
      colorScheme: theme.colorScheme.copyWith(
        secondary: ColorsValue.lightAccent,
      ),
    );
  }
}
  