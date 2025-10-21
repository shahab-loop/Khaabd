import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/splash_screen/controller/spalsh_controller.dart';
import 'package:khaabd/widgets/base_scaffold.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController controller = Get.put(SplashController());

    return BaseScaffold(
      showBlurGlow: true,

      body: Container(
        width: 370.w,
        color: ThemeManager.primaryColor,
        child: SafeArea(
          child: Center(
            child: Image.asset(
              Assets.images.khaabd.path,
            ),
          ),
        ),
      ),
    );
  }
}
