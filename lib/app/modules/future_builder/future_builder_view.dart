import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'future_builder_controller.dart';

class FutureBuilderView extends GetView<FutureBuilderController> {
  const FutureBuilderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Future Builder'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.getWeather();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      //body
      body: FutureBuilder(
        future: controller.getWeather(),
        builder: (context, snapshot) {
          // print(snapshot);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(
                backgroundColor: Colors.pink,
              ),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          final weatherData = snapshot.data!;
          final firstList = weatherData.list[0];
          // DATA FOR MAIN CARD
          final currentTemp = ((firstList.main.temp) - 273.15).round();
          final currentSky = firstList.weather[0].main;
          // DATA FOR ADDITIONAL INFORMATION
          final currentPressure = firstList.main.pressure;
          final currentWindSpeed = firstList.wind.speed;
          final currentHumidity = firstList.main.humidity;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //MAIN CARD SECTION
                MainCard(currentSky, currentTemp),
                const SizedBox(
                  height: 20,
                ),

                //HOURLY FORECAST SECTION
                const Text(
                  'Hourly forecast',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final hourlyForecast = weatherData.list[index + 1];
                      final hourlySky = hourlyForecast.weather[0].main;
                      final hourlyTemp = hourlyForecast.main.temp.toString();
                      final time = DateTime.parse(hourlyForecast.dtTxt);
                      return HourlyForcastItem(
                        //00:30
                        DateFormat.j().format(time),
                        hourlyTemp,
                        hourlySky == 'Clouds' || hourlySky == 'Rain'
                            ? Icons.cloud
                            : Icons.sunny,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),

                //ADDITIONAL INFO SECTION
                const Text(
                  'Additional Information',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AdditionalInfoItem(
                      Icons.water_drop,
                      'Humidity',
                      currentHumidity.toString(),
                    ),
                    AdditionalInfoItem(
                      Icons.air,
                      'Wind Speed',
                      currentWindSpeed.toString(),
                    ),
                    AdditionalInfoItem(
                      Icons.beach_access,
                      'Pressure',
                      currentPressure.toString(),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  // MAIN CARD
  Widget MainCard(String currentSky, int currentTemp) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    '$currentTemp °C',
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Icon(
                    currentSky == 'Clouds' || currentSky == 'Rain'
                        ? Icons.cloud
                        : Icons.sunny,
                    size: 64,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    currentSky,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //ADDITIONAL INFO
  Widget AdditionalInfoItem(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(
          icon,
          size: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(label),
        const SizedBox(
          height: 8,
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  //HOURLY FORECAST
  Widget HourlyForcastItem(String time, String temperature, IconData icon) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 8,
            ),
            Icon(
              icon,
              size: 32,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              temperature,
            ),
          ],
        ),
      ),
    );
  }
}
