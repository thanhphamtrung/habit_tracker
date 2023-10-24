import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';

import 'package:habit_tracker/src/controllers/navigation_controller.dart';
import 'package:habit_tracker/src/screens/create_habit_screen.dart';
import 'package:habit_tracker/src/screens/home_screen.dart';
import 'package:habit_tracker/src/screens/stat_screen.dart';

class NavigationScreen extends GetView<NavigationController> {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: IndexedStack(
            index: controller.tabIndex.value,
            children: const [
              HomeScreen(),
              CreateHabitScreen(),
              StatScreen(),
            ],
          ),
          bottomNavigationBar: CurvedNavigationBar(
            items: const [
              Icon(Icons.home),
              Icon(Icons.add),
              Icon(Icons.auto_graph),
            ],
            onTap: controller.changeTabIndex,
            backgroundColor: Colors.deepPurple,
            color: Colors.deepPurple.shade200,
            buttonBackgroundColor: Colors.white,
          ),
        ));
  }
}
