import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 20,
          ),
          backgroundColor: Colors.pink,
          titleTextStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
          titleSmall: TextStyle(
              fontSize: 12, color: Colors.black, fontWeight: FontWeight.w300),
          bodyMedium: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          size: 32,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
