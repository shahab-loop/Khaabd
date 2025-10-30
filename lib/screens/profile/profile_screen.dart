import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/profile/controller/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/ProfileScreen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.find<ProfileController>();
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
                  Gap(115.w),
                  Text(
                    'Profile',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
              Gap(51.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  Assets.images.profile.path,
                  height: 114.h,
                  width: 118.w,
                ),
              ),
              Gap(56.h),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ThemeManager.secondaryColor,
                  ),
                  child: Center(
                    child: Text(
                      'Edit',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              ),
              Gap(40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'App Notifications',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Switch(
                    value: true,
                    activeTrackColor: ThemeManager.white,
                    activeColor: ThemeManager.secondaryColor,
                    onChanged: (value) {},
                  ),
                ],
              ),
              Divider(color: ThemeManager.greyColor, height: 1),
              Gap(13.5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Change Password',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              Gap(13.5.h),
              Divider(color: ThemeManager.greyColor, height: 1),
            Gap(13.5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'conditions',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              Gap(13.5.h),
              Divider(color: ThemeManager.greyColor, height: 1),
            Gap(13.5.h),
Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Privacy policy',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.arrow_forward_ios),
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
