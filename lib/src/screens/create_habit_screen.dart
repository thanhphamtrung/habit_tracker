import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CreateHabitScreen extends GetView {
  const CreateHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.limeAccent,
      child: const Center(
        child: Text('Create Habit'),
      ),
    );
  }
}
