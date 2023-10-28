import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HabitCard extends GetView {
  final String title;
  const HabitCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: context.theme.colorScheme.primaryContainer,
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          )),
      child: Center(
        child: Text('Workout',
            style: context.textTheme.titleLarge?.copyWith(
                color: context.theme.colorScheme.onPrimaryContainer)),
      ),
    );
  }
}
