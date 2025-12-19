import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/foam_validator.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/auth/forgot_screen/controller/forgot_controller.dart';
import 'package:khaabd/widgets/base_scaffold.dart';
import 'package:khaabd/widgets/customised_widget.dart';
import 'package:khaabd/widgets/textfieldwithsvg.dart';
import 'package:khaabd/widgets/textformfield.dart';

class ForgotScreen extends StatelessWidget {
  static const String routeName = '/ForgotScreen';
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ForgotController controller = Get.find<ForgotController>();

    return BaseScaffold(
      body: Stack(
        children: [
          Form(
            key: controller.formKey,
            child: Column(
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
                    Text(
                      'Forgot Password',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 340.h,
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
                      'Forgot Password',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Text(
                      'A verification code will be sent to your email to reset your password.',
                      style: Theme.of(context).textTheme.displaySmall,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ],
                    ),
                    Gap(4.h),
                    TextFormFieldWidget(hintText: 'My email',prefixSvg: Assets.svgs.sms,validator:  (String? value) =>
                        emailValidator(value, context),),

                    Gap(39.h),
                    CustomElevatedButton(
                      text: 'Send Verification Code',height: 56.h,
                      onPressed: () {
                        if (controller.formKey.currentState!.validate()) {
                          NavigationHelper.navigateTo('/AccountAuthenticationScreen');
                        }
                      },
                      backgroundColor: ThemeManager.secondaryColor,
                      BorderColor: ThemeManager.secondaryColor,
                      borderRadius: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(bottom:300 ,left:135 ,
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
