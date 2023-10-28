import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ExploreSession extends GetView {
  final String title;
  final List habitCards;
  final double height;

  const ExploreSession({
    super.key,
    required this.title,
    required this.habitCards,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = context.theme.colorScheme;
    final TextTheme textTheme = context.textTheme;
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: textTheme.titleLarge
                    ?.copyWith(color: colorScheme.onBackground),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: textTheme.titleLarge
                      ?.copyWith(color: colorScheme.primary),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => habitCards[index],
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemCount: habitCards.length,
            ),
          )
        ],
      ),
    );
  }
}
