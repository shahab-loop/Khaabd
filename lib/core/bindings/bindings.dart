import 'package:get/get.dart';
import 'package:khaabd/screens/authentication/Login_screen/controller/login_controller.dart';
import 'package:khaabd/screens/authentication/authentication_screen/controller/authentication_controller.dart';
import 'package:khaabd/screens/authentication/forgot_screen/controller/forgot_controller.dart';
import 'package:khaabd/screens/onboarding/controller/onboarding_controller.dart';
import 'package:khaabd/screens/role_screen/controller/role_controller.dart';
import 'package:khaabd/screens/splash_screen/controller/spalsh_controller.dart';


class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
class OnboardingScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }
}
class RoleScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RoleController());
  }
}
class LoginScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
class ForgotScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotController());
  }
}
class AuthenticationScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthenticationController());
  }
}