import 'package:get/get.dart';

import '../controllers/create_habit/create_habit_controller.dart';
import '../controllers/home/home_controller.dart';
import '../controllers/navigation_controller.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => CreateHabitController());
    Get.lazyPut(() => HomeController());
  }
}
