import 'package:get/get.dart';
import 'package:khaabd/screens/authentication/authentication_screen/authentication_screen.dart';

class AuthenticationController extends GetxController {
  void goToAuthenticationScreen() {
    Get.toNamed(AuthenticationScreen.routeName);
  }
}
