import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';

import 'package:habit_tracker/src/bindings/navigation_binding.dart';
import 'package:habit_tracker/src/core/color/color_schemes.dart';

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
            page: () => const NavigationScreen()),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
