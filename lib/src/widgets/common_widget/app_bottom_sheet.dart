import 'package:flutter/material.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';

import 'package:habit_tracker/src/controllers/navigation_controller.dart';

import '../../controllers/create_habit/create_habit_controller.dart';
import '../../core/const/string_const.dart';
import '../card/habit_list_tile.dart';

class AppBottomSheet extends GetView {
  const AppBottomSheet({
    super.key,
    required this.bottomSheetController,
  });

  final CreateHabitController bottomSheetController;

  @override
  Widget build(BuildContext context) {
    final navigationController = Get.find<NavigationController>();
    Get.put(navigationController);
    var colorScheme = context.theme.colorScheme;
    var textTheme = context.textTheme;
    return BottomSheet(
      onClosing: () {},
      enableDrag: false,
      showDragHandle: false,
      builder: (context) {
        return SizedBox(
          height: 360,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 40.0,
                height: 4.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(2.5),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'NEW GOOD HABIT',
                      ),
                    ),
                    const SizedBox(height: 16),
                    const HabitListTile(title: 'Walk'),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                              height: 64,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hintText: "Type in your text",
                                  fillColor: Colors.white70,
                                ),
                              )),
                        ),
                        const SizedBox(width: 64),
                        Obx(
                          () => DropdownButtonHideUnderline(
                            child: DropdownButton2<String>(
                              isExpanded: true,
                              hint: Text(
                                'Select Item',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).hintColor,
                                ),
                              ),
                              items: StringConst.metricType
                                  .map(
                                      (String item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ))
                                  .toList(),
                              value: bottomSheetController
                                  .selectedDropdownValue.value,
                              onChanged:
                                  bottomSheetController.onSelectDropDownValue,
                              buttonStyleData: ButtonStyleData(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                height: 40,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: colorScheme.secondaryContainer),
                              ),
                              menuItemStyleData: const MenuItemStyleData(
                                height: 40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () {
                    Get.back();
                    Get.snackbar('Hallo', 'You have added a new Habit');
                    navigationController.changeTabIndex(0);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorScheme.secondaryContainer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(16),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  child: Text(
                    'Create Habit',
                    style: textTheme.titleLarge?.copyWith(
                      color: colorScheme.onSecondaryContainer,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
