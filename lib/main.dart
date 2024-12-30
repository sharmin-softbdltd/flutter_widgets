import 'package:flutter/material.dart';
import 'package:flutter_widgets/app/utils/theme.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: lightThemeConst,
      darkTheme: darkThemeConst,
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // initialBinding: ,
    ),
  );
}
