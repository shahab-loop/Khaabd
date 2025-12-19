import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/auth/change_password/controller/changepassword_controller.dart';
import 'package:khaabd/widgets/customised_widget.dart';
import 'package:khaabd/widgets/textfieldwithsvg.dart';

class ChangePassword extends StatefulWidget {
  static const String routeName = '/ChangePassword';
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    final ChangePasswordController controller =
        Get.find<ChangePasswordController>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: ThemeManager.white,
                    ),
                  ),
                  Gap(100.w),
                  Text(
                    'Change Password',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Gap(40.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Old Password',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  Gap(4.h),

                  TextFormField(
                    style: TextStyle(color: ThemeManager.darkGrey),
                    decoration: InputDecoration(
                      hintText: '123456789',
                      hintStyle: Theme.of(context).textTheme.displayMedium,
                      fillColor: ThemeManager.primaryColor,
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ThemeManager.darkGrey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ThemeManager.darkGrey,
                          width: 2,
                        ),
                      ),
                      suffixIcon: SizedBox(
                        width: 10.h,
                        height: 10.w,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            Assets.svgs.eye,
                            height: 20,
                            width: 20,
                            color: ThemeManager.Grey,
                          ),
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                  Gap(24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'New Password',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  Gap(4.h),

                  TextFormField(
                    style: TextStyle(color: ThemeManager.darkGrey),
                    decoration: InputDecoration(
                      hintText: '123456789',
                      hintStyle: Theme.of(context).textTheme.displayMedium,
                      fillColor: ThemeManager.primaryColor,
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ThemeManager.darkGrey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ThemeManager.darkGrey,
                          width: 2,
                        ),
                      ),
                      suffixIcon: SizedBox(
                        width: 10.h,
                        height: 10.w,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            Assets.svgs.eye,
                            height: 20,
                            width: 20,
                            color: ThemeManager.Grey,
                          ),
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                  Gap(24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Confirm Password',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  Gap(4.h),
                  TextFormField(
                    style: TextStyle(color: ThemeManager.darkGrey),
                    decoration: InputDecoration(
                      hintText: '*********',
                      hintStyle: Theme.of(context).textTheme.displayMedium,
                      fillColor: ThemeManager.primaryColor,
                      border: InputBorder.none,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ThemeManager.darkGrey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ThemeManager.darkGrey,
                          width: 2,
                        ),
                      ),
                      suffixIcon: SizedBox(
                        width: 10.h,
                        height: 10.w,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            Assets.svgs.hide,
                            height: 20,
                            width: 20,
                            color: ThemeManager.Grey,
                          ),
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),

                  Gap(80.h),
                  CustomElevatedButton(
                    text: 'Submit',
                    height: 40.h,
                    width: 140.w,
                    onPressed: () {
                      NavigationHelper.navigateTo('/LoginScreen');
                    },
                    backgroundColor: ThemeManager.secondaryColor,
                    BorderColor: ThemeManager.secondaryColor,
                    borderRadius: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
