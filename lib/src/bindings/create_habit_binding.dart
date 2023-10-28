import 'package:get/get.dart';

import '../controllers/create_habit/create_habit_controller.dart';

class CreateHabitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateHabitController());
  }
}
