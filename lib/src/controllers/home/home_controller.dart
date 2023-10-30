import 'package:get/get.dart';

class HomeController extends GetxController {
  var listCard = Rx<List<String>>([]);

  void addNewCardData(String cardData) {
    listCard.value.add(cardData);
    listCard.refresh();
  }
}
