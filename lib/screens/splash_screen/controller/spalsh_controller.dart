import 'package:get/get.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/navigations/routes/routes.dart';

class SplashController extends GetxController {
  final Duration splashDuration = const Duration(seconds: 3);

  @override
  void onInit() {
    super.onInit();
    _startSplashTimer();
  }

  void _startSplashTimer() {
    Future.delayed(splashDuration, _navigateToNext);
  }

  void _navigateToNext() {

    if (!isClosed) {
      NavigationHelper.removeAllAndNavigateTo(Routes.onboardingScreen);
    }
  }
}
