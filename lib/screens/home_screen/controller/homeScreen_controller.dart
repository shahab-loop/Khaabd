import 'package:get/get.dart';
import 'package:khaabd/screens/home_screen/home_screen.dart';

class HomeScreenController extends GetxController {
  var selectedItem = "".obs;
  final List<String> items = ["Meat", "Vegetables", "Chicken"];


  void goToHomeScreen() {
    Get.toNamed(HomeScreen.routeName);
  }
}
