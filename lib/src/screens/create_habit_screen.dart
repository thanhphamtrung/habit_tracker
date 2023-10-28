import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../widgets/card/habit_card.dart';
import '../widgets/card/habit_small_card.dart';
import '../widgets/session/explore_session.dart';

class CreateHabitScreen extends GetView {
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
                  child: const Column(
                    children: [
                      ExploreSession(
                        title: 'Suggested for You',
                        height: 151,
                        habitCards: [
                          HabitSmallCard(),
                          HabitSmallCard(),
                          HabitSmallCard(),
                          HabitSmallCard(),
                        ],
                      ),
                      ExploreSession(
                        title: 'Habit Clubs',
                        height: 151,
                        habitCards: [
                          HabitSmallCard(),
                          HabitSmallCard(),
                          HabitSmallCard(),
                          HabitSmallCard(),
                        ],
                      ),
                      ExploreSession(
                        title: 'Challenges',
                        height: 200,
                        habitCards: [
                          HabitCard(),
                          HabitCard(),
                          HabitCard(),
                        ],
                      ),
                      ExploreSession(
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
