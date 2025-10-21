import 'package:get/get.dart';
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