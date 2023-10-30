import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';

import 'package:habit_tracker/src/bindings/create_habit_binding.dart';
import 'package:habit_tracker/src/controllers/create_habit/create_habit_controller.dart';
import 'package:habit_tracker/src/screens/create_habit/create_habit_screen.dart';
import 'package:habit_tracker/src/screens/home_screen.dart';

import 'bindings/navigation_binding.dart';
import 'core/color/color_schemes.dart';
import 'screens/navigation_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: darkColorScheme,
      ),
      getPages: [
        GetPage(
          participatesInRootNavigator: true,
          name: '/',
          binding: NavigationBinding(),
          page: () => const NavigationScreen(),
        ),
        GetPage(
          participatesInRootNavigator: true,
          name: '/create-habit',
          binding: CreateHabitBinding(),
          page: () => const CreateHabitScreen(),
        ),
        GetPage(
          participatesInRootNavigator: true,
          name: '/home',
          page: () => const HomeScreen(),
        ),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
