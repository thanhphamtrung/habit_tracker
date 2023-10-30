import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HabitListTile extends GetView {
  final String title;
  const HabitListTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: context.theme.colorScheme.primaryContainer,
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          )),
      child: Center(
        child: Text(
          title,
          style: context.textTheme.titleLarge
              ?.copyWith(color: context.theme.colorScheme.onPrimaryContainer),
        ),
      ),
    );
  }
}
