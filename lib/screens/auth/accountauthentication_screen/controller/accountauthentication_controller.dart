import 'package:get/get.dart';
import 'package:khaabd/screens/auth/accountauthentication_screen/accountauthentication_screen.dart';
class AccountAuthenticationController extends GetxController {
  void goToAccountAuthenticationScreen() {
    Get.toNamed(AccountAuthenticationScreen.routeName);
  }
}
