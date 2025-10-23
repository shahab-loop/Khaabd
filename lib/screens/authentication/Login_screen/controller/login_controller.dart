import 'package:get/get.dart';
import 'package:khaabd/screens/authentication/Login_screen/login_screen.dart';

class LoginController extends GetxController {
  void goToLoginScreen() {
    Get.toNamed(LoginScreen.routeName);
  }
}
