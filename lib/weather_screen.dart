import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weatherapp/additional_information.dart';
import 'package:weatherapp/hourly_forecast_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Weather App",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // main card
            SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blueGrey,
                elevation: 10,
                shape: const CircleBorder(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            "300K",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                          SizedBox(height: 16),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Rainy",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // weather forecast card
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Weather Forecast",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SingleChildScrollView(
              padding: EdgeInsets.all(3),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HourlyForecastItem(
                    time: "00:00",
                    temperature: "0",
                    iconData: Icons.cloud,
                  ),
                  HourlyForecastItem(
                    time: "00:00",
                    temperature: "0",
                    iconData: Icons.cloud,
                  ),
                  HourlyForecastItem(
                    time: "00:00",
                    temperature: "0",
                    iconData: Icons.cloud,
                  ),
                  HourlyForecastItem(
                    time: "00:00",
                    temperature: "0",
                    iconData: Icons.cloud,
                  ),
                  HourlyForecastItem(
                    time: "00:00",
                    temperature: "0",
                    iconData: Icons.cloud,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // additional information
            const Text(
              "Addiotional Information",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AdditionalInfoItem(
                    iconData: Icons.water_drop,
                    label: "Humidity",
                    value: "94",
                  ),
                  AdditionalInfoItem(
                    iconData: Icons.air,
                    label: "Wind Speed",
                    value: "7.7",
                  ),
                  AdditionalInfoItem(
                    iconData: Icons.beach_access,
                    label: "Pressure",
                    value: "1000",
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
