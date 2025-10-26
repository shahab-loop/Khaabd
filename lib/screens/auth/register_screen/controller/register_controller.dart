import 'package:get/get.dart';
import 'package:khaabd/screens/auth/register_screen/register_screen.dart';

class RegisterController extends GetxController {
  void goToRegisterScreen() {
    Get.toNamed(RegisterScreen.routeName);
  }
}
