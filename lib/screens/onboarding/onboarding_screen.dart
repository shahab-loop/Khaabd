import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/widgets/base_scaffold.dart';
import 'package:khaabd/widgets/customised_widget.dart';
import 'controller/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = '/OnboardingScreen';
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.find<OnboardingController>();
    return BaseScaffold(
      showBlurGlow: true,
      body: Column(
        children: [
          Image.asset(Assets.images.onboarding.path),
          Gap(40.h),
          Text(
            'Welcome to Khaabd',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Gap(10.h),
          SizedBox(
            width: 340.w,
            height: 72.h,
            child: Text(
              'One platform that brings diners and restaurants together through deals, reviews, and promotions.',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Gap(40.h),
          CustomElevatedButton(
            text: 'GET STARTED',
            onPressed: () {
              NavigationHelper.navigateTo('/RoleScreen');
            },
            backgroundColor: ThemeManager.secondaryColor,
            BorderColor: ThemeManager.secondaryColor,
            Svg: '',
            height: 56.h,
            width: 350.w,
            borderRadius: 50,
          ),
        ],
      ),
    );
  }
}
