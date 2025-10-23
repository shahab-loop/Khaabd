import 'package:get/get.dart';
import 'package:khaabd/screens/authentication/forgot_screen/forgot_screen.dart';

class ForgotController extends GetxController {
  void goToForgotScreen() {
    Get.toNamed(ForgotScreen.routeName);
  }
}
