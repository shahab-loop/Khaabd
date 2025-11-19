import 'package:get/get.dart';
import 'package:khaabd/screens/restaurent_details/restaurentdetails_screen.dart';

class RestaurentDetailsController extends GetxController {
  void goToRestaurentDetailsScreen() {
    Get.toNamed(RestaurentDetailsScreen.routeName);
  }
}
