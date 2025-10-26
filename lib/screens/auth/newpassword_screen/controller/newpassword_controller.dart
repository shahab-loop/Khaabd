import 'package:get/get.dart';
import 'package:khaabd/screens/auth/newpassword_screen/newpassword_screen.dart';

class NewPasswordController extends GetxController {
  void goToNewPasswordScreen() {
    Get.toNamed(NewPasswordScreen.routeName);
  }
}
