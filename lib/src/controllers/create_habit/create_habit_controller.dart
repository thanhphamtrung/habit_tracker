import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CreateHabitController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController controller;
  var selectedDropdownValue = Rx<String>('Number');
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

  void onSelectDropDownValue(String? value) {
    selectedDropdownValue.value = value ?? 'Number';
    update();
  }
}
