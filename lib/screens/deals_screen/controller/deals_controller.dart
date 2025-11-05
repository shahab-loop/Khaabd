import 'package:get/get.dart';
import 'package:khaabd/screens/deals_screen/deals_screen.dart';

class DealsController extends GetxController {
  void goToDealsScreen() {
    Get.toNamed(DealsScreen.routeName);
  }
}
