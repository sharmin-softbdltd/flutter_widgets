import 'package:flutter/material.dart';

final lightThemeConst = ThemeData(
  useMaterial3: true,
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
    bodyLarge: TextStyle(
        fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(
        fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
    bodySmall: TextStyle(fontSize: 12, color: Colors.black),
    labelMedium: TextStyle(fontSize: 12, color: Colors.black),
    labelSmall: TextStyle(fontSize: 12, color: Colors.black),
  ),
  iconTheme: IconThemeData(
    size: 32,
  ),
  inputDecorationTheme: InputDecorationTheme(
    errorStyle: TextStyle(
      fontSize: 12,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(10),
    ),
    prefixIconColor: Colors.grey,
  ),
);

final darkThemeConst = ThemeData(
  useMaterial3: true,
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
        fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(
        fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(
        fontSize: 12, color: Colors.white, fontWeight: FontWeight.w300),
    bodyLarge: TextStyle(
        fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(
        fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
    bodySmall: TextStyle(fontSize: 12, color: Colors.white),
    labelMedium: TextStyle(fontSize: 12, color: Colors.white),
    labelSmall: TextStyle(fontSize: 12, color: Colors.white),
  ),
  iconTheme: IconThemeData(
    size: 32,
  ),
  inputDecorationTheme: InputDecorationTheme(
    errorStyle: TextStyle(
      fontSize: 12,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.circular(10),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
      borderRadius: BorderRadius.circular(10),
    ),
    prefixIconColor: Colors.grey,
  ),
);
