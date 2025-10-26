import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/auth/newpassword_screen/controller/newpassword_controller.dart';
import 'package:khaabd/widgets/base_scaffold.dart';
import 'package:khaabd/widgets/customised_widget.dart';
import 'package:khaabd/widgets/textfieldwithsvg.dart';

class NewPasswordScreen extends StatelessWidget {
  static const String routeName = '/NewPasswordScreen';
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NewPasswordController controller = Get.find<NewPasswordController>();

    return BaseScaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: GestureDetector(
                      onTap: () {
                        NavigationHelper.goBack();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: ThemeManager.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Gap(4.w),
                  Row(
                    children: [
                      Text(
                        'Set a \nNew Password',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 425.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ThemeManager.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Set a New Password',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Text(
                      'Please set a new password to secure your Work Mate account.',
                      style: Theme.of(context).textTheme.displaySmall,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    Gap(4.h),
                    TextFormFieldSvgs(
                      hintText: 'Input Password',
                      prefixSvg: Assets.svgs.scan,
                      suffixSvg: Assets.svgs.eye,
                    ),
                    Gap(24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Confirm Password',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    Gap(4.h),
                    TextFormFieldSvgs(
                      hintText: 'Re Enter Your Password',
                      prefixSvg: Assets.svgs.scan,
                      suffixSvg: Assets.svgs.hide,
                    ),
                    Gap(39.h),
                    CustomElevatedButton(
                      text: 'Submit',height: 56.h,
                      onPressed: () {
                        NavigationHelper.navigateTo('/LoginScreen');
                      },
                      backgroundColor: ThemeManager.secondaryColor,
                      BorderColor: ThemeManager.secondaryColor,
                      Svg: '',
                      borderRadius: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(bottom:380 ,left:135 ,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: ThemeManager.secondaryColor,
              ),
              child: SvgPicture.asset(Assets.svgs.lock, width: 20, height: 20),
            ),
          ),
        ],
      ),
    );
  }
}
