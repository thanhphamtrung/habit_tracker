import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../widgets/habit_card.dart';

class HomeScreen extends GetView {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      color: context.theme.colorScheme.background,
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'In Progress',
                  style: context.textTheme.headlineLarge
                      ?.copyWith(color: context.theme.colorScheme.onBackground),
                ),
                Container(
                  color: Colors.black26,
                  height: 70,
                  width: 70,
                )
              ],
            ),
            const SizedBox(height: 64),
            const Column(
              children: [
                HabitCard(
                  title: 'Workout',
                ),
                SizedBox(height: 24),
              ],
            )
          ],
        ),
      ),
    );
  }
}
