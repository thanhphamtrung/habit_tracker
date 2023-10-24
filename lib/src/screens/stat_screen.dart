import 'package:flutter/material.dart';

import 'package:get/get.dart';

class StatScreen extends GetView {
  const StatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.limeAccent,
      child: const Center(
        child: Text('Stat Screen '),
      ),
    );
  }
}
