import 'package:get/get.dart';

class NavigationController extends GetxController {
  var tabIndex = RxInt(1);

  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }
}
