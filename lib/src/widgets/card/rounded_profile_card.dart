import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RoundedProfileCard extends GetView {
  const RoundedProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: const ShapeDecoration(
        image: DecorationImage(
          image: NetworkImage("https://via.placeholder.com/20x20"),
          fit: BoxFit.fill,
        ),
        shape: OvalBorder(
          side: BorderSide(width: 1, color: Colors.white),
        ),
      ),
    );
  }
}
