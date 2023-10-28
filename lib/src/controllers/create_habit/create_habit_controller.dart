import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CreateHabitController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void onInit() {
    super.onInit();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 250,
      ),
    );
  }
}
