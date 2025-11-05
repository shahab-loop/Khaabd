import 'package:get/get.dart';
import 'package:khaabd/core/modal/static_model.dart';
import 'package:khaabd/screens/home_screen/controller/homeScreen_controller.dart';

class DescriptionController extends GetxController {
  late final RestaurantDishModel dish;

  @override
  void onInit() {
    super.onInit();
    dish = Get.arguments as RestaurantDishModel;
  }
}
