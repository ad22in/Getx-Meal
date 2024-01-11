import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MealItemTraitView extends GetView {
  const MealItemTraitView({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 17,
          color: Colors.white,
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
