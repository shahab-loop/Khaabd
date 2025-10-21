import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;

  void nextPage() {
    currentPage++;
  }
}