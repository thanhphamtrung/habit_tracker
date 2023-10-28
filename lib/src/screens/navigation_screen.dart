import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';

import '../controllers/navigation_controller.dart';

import 'create_habit/create_habit_screen.dart';
import 'home_screen.dart';
import 'stat_screen.dart';

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
            index: controller.tabIndex.value,
            items: [
              Icon(
                Icons.home,
                size: context.theme.buttonBarTheme.buttonHeight,
              ),
              Icon(
                Icons.add,
                size: context.theme.buttonBarTheme.buttonHeight,
              ),
              Icon(
                Icons.auto_graph,
                size: context.theme.buttonBarTheme.buttonHeight,
              ),
            ],
            onTap: controller.changeTabIndex,
            backgroundColor: context.theme.colorScheme.surface,
            color: context.theme.colorScheme.surface,
            buttonBackgroundColor: context.theme.colorScheme.primary,
          ),
        ));
  }
}
