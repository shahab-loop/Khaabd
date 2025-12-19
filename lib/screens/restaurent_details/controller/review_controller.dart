import 'package:get/get.dart';
import 'package:khaabd/screens/review_screen/review_screen.dart';

class ReviewController extends GetxController {
  void goToReviewController() {
    Get.toNamed(ReviewScreen.routeName);
  }
}
