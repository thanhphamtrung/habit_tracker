import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:habit_tracker/src/controllers/create_habit/create_habit_controller.dart';

import '../../widgets/card/habit_card.dart';
import '../../widgets/card/habit_small_card.dart';
import '../../widgets/session/explore_session.dart';

class CreateHabitScreen extends GetView<CreateHabitController> {
  const CreateHabitScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    var colorScheme = context.theme.colorScheme;
    var textTheme = context.textTheme;
    return Container(
        width: double.infinity,
        color: colorScheme.background.withAlpha(150),
        child: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore',
                      style: textTheme.headlineLarge
                          ?.copyWith(color: colorScheme.onBackground),
                    ),
                    Icon(
                      Icons.search_outlined,
                      size: 48,
                      color: colorScheme.tertiary,
                    )
                  ],
                ),
              ),
              Divider(
                color: colorScheme.onBackground,
                height: 1,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                  color: colorScheme.background,
                  child: Column(
                    children: [
                      ExploreSession(
                        title: 'Suggested for You',
                        height: 151,
                        habitCards: [
                          HabitSmallCard(
                            onTap: () {
                              Get.bottomSheet(
                                BottomSheet(
                                  onClosing: () {},
                                  animationController: controller.controller,
                                  showDragHandle: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25.0),
                                    ),
                                  ),
                                  backgroundColor:
                                      colorScheme.tertiaryContainer,
                                  builder: (ctx) => Container(
                                    height: 400,
                                  ),
                                ),
                              );
                            },
                          ),
                          HabitSmallCard(
                            onTap: () {},
                          ),
                          HabitSmallCard(
                            onTap: () {},
                          ),
                        ],
                      ),
                      const ExploreSession(
                        title: 'Challenges',
                        height: 200,
                        habitCards: [
                          HabitCard(),
                          HabitCard(),
                          HabitCard(),
                        ],
                      ),
                      const ExploreSession(
                        title: 'Learning',
                        height: 200,
                        habitCards: [
                          HabitCard(),
                          HabitCard(),
                          HabitCard(),
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
