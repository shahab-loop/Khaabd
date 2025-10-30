import 'package:get/get.dart';
import 'package:khaabd/screens/profile/profile_screen.dart';

class ProfileController extends GetxController {
  void goToProfileScreen() {
    Get.toNamed(ProfileScreen.routeName);
  }
}
