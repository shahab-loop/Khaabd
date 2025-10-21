import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:khaabd/screens/role_screen/role_screen.dart';

class RoleController extends GetxController {
  RxBool isFoodLoverSelected = false.obs;
  RxBool isRestaurantOwnerSelected = false.obs;

  void selectFoodLover() {
    isFoodLoverSelected.value = true;
    isRestaurantOwnerSelected.value = false;
  }

  void selectRestaurantOwner() {
    isFoodLoverSelected.value = false;
    isRestaurantOwnerSelected.value = true;
  }

  void goToRoleScreen() {
    Get.toNamed(RoleScreen.routeName);
  }
}
