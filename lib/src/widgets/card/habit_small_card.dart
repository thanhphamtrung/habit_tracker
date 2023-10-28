import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HabitSmallCard extends GetView {
  final VoidCallback onTap;
  const HabitSmallCard({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = context.theme.colorScheme;
    final TextTheme textTheme = context.textTheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 128,
        height: 102,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0x0F222C5C),
              blurRadius: 68,
              offset: Offset(58, 26),
              spreadRadius: 1,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 128,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: ShapeDecoration(
                color: const Color(0xFFFCDCD3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        height: 32,
                        width: 32,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Walk',
                        style: TextStyle(
                          color: Color(0xFF040415),
                          fontSize: 14,
                          fontFamily: 'Airbnb Cereal',
                          fontWeight: FontWeight.w500,
                          height: 0.10,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '10 km',
                        style: textTheme.bodySmall
                            ?.copyWith(color: const Color(0xFF040415)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
