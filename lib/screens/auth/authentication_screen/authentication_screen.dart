import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/auth/authentication_screen/controller/authentication_controller.dart';
import 'package:khaabd/widgets/base_scaffold.dart';
import 'package:khaabd/widgets/customised_widget.dart';

class AuthenticationScreen extends StatelessWidget {
  static const String routeName = '/AuthenticationScreen';
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthenticationController controller = Get.find<AuthenticationController>();

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
                  Text(
                    'Authentication \nYour Self',
                    style: Theme.of(context).textTheme.headlineLarge,
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
                      'Authentication',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Text(
                      'A reset code has been sent to Example@gmail.com, check your email to continue the password reset process.',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                    Gap(9),
                    Row(
                      children: [
                        SizedBox(
                          width: 46,
                          height: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                            ),
                          ),
                        ),
                        Gap(5.2.w),
                      SizedBox(
                          width: 46,
                          height: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                            ),
                          ),
                        ),
                        Gap(5.2.w),
                      SizedBox(
                          width: 46,
                          height: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                            ),
                          ),
                        ),
                        Gap(5.2.w),
                      SizedBox(
                          width: 46,
                          height: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                            ),
                          ),
                        ),
                        Gap(5.2.w),
                      SizedBox(
                          width: 46,
                          height: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                            ),
                          ),
                        ),
                        Gap(5.2.w),
                      SizedBox(
                          width: 46,
                          height: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
                              ),
                            ),
                          ),
                        ),
                        Gap(5.2.w),
                        ],
                    ),
                    Gap(16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Haven't received the verification code? ",
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize:10,fontWeight: FontWeight.w200 ),
                        ),
                        Text(
                          " Resend it. ",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                    Gap(39.h),
                    CustomElevatedButton(
                      text: 'Submit',height: 56.h,
                      onPressed: () {
                        NavigationHelper.navigateTo('/NewPasswordScreen');
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
