import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'rounded_profile_card.dart';

class HabitCard extends GetView {
  const HabitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.71, -0.71),
          end: Alignment(-0.71, 0.71),
          colors: [Color(0xFF6B73FF), Color(0xFF000DFF)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.watch_later_outlined),
          SizedBox(height: 16),
          Text(
            'Best Runners! 🏃🏻‍♂️',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Airbnb Cereal',
              fontWeight: FontWeight.w500,
              height: 0.10,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '5 days 13 hours left',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Airbnb Cereal',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 12),
          LinearProgressIndicator(
            value: 0.4,
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: Stack(children: [
                  RoundedProfileCard(),
                  Positioned(
                    left: 10,
                    child: RoundedProfileCard(),
                  ),
                ]),
              ),
              Text(
                '2 friends joined',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: 'Airbnb Cereal',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
