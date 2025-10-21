import 'package:get/get.dart';
import 'package:khaabd/screens/role_screen/role_screen.dart';


class RoleController extends GetxController {
  void goToRoleScreen() {
    Get.toNamed(RoleScreen.routeName);
  }
}
