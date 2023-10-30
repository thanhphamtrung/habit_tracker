import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home/home_controller.dart';
import '../widgets/card/habit_list_tile.dart';

class HomeScreen extends GetView {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    Get.put(homeController);
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
                  style: context.textTheme.headlineLarge?.copyWith(
                    color: context.theme.colorScheme.onBackground,
                  ),
                ),
                Container(
                  color: Colors.black26,
                  height: 70,
                  width: 70,
                )
              ],
            ),
            const SizedBox(height: 64),
            Obx(
              () => Expanded(
                child: ListView.builder(
                  itemBuilder: ((context, index) => Column(
                        children: [
                          HabitListTile(
                              title: homeController.listCard.value[index]),
                          const SizedBox(height: 24),
                        ],
                      )),
                  itemCount: homeController.listCard.value.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
