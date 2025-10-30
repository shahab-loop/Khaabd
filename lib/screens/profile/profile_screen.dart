import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/profile/controller/profile_controller.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = '/ProfileScreen';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = true;
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
                  showImageDialog(context, Assets.images.noprofile.path);
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
                    value: isSwitched,
                    activeTrackColor: ThemeManager.white,
                    activeColor: ThemeManager.secondaryColor,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
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
                    'Conditions',
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
                    'Privacy Policy',
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

void showImageDialog(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 230,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ThemeManager.white,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                Assets.images.noprofile.path,
                height: 80.h,
                width: 80.w,
              ),
            ),
            Gap(16.h),
            SizedBox(
              width: 252.w,
              height: 32.h,
              child: TextFormField(
                style: TextStyle(color: ThemeManager.darkGrey),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  hintText: 'Name',
                  hintStyle: Theme.of(context).textTheme.titleMedium,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: ThemeManager.primaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: ThemeManager.primaryColor),
                  ),
                ),
              ),
            ),
            Gap(32.h),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                  Navigator.pop(context);
                    },
                  child: Container(
                    height: 32,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: ThemeManager.darkGrey,
                    ),
                    child: Center(
                      child: Text(
                        'cancel',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showImageDialog(context, Assets.images.noprofile.path);
                  },
                  child: Container(
                    height: 32,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: ThemeManager.secondaryColor,
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    ),
  );
}
