import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final String time;
  final String temperature;
  final IconData iconData;
  const HourlyForecastItem({
    super.key,
    required this.time,
    required this.temperature,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      shape: const CircleBorder(),
      elevation: 6,
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Icon(
              iconData,
              size: 32,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              temperature,
            )
          ],
        ),
      ),
    );
  }
}
