import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FutureBuilderController extends GetxController {
  Future getWeather() async {
    try {
      String cityName = 'Dhaka';
      final response = await http.get(Uri.parse(
          'http://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=616d43e8b133e01a793a7c9f4ccd37d9'));

      final data = weatherDataModelFromJson(response.body.toString());

      if (data.cod != '200') {
        throw 'An unknown error occur';
      }
      return data;
    } catch (e) {
      throw e.toString();
    }
  }
}
