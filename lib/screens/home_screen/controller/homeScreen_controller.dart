import 'package:get/get.dart';
import 'package:khaabd/screens/home_screen/home_screen.dart';

class HomeScreenController extends GetxController {
  void goToHomeScreen() {
    Get.toNamed(HomeScreen.routeName);
  }
}
