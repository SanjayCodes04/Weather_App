import 'package:flutter/material.dart';

class AdditionalInfoItem extends StatelessWidget {
  final IconData iconData;
  final String label;
  final String value;
  const AdditionalInfoItem({
    super.key,
    required this.iconData,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(iconData),
        const SizedBox(height: 10),
        Text(label),
        const SizedBox(height: 10),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
