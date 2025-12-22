import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/navigations/routes/routes.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/foam_validator.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/profile/controller/profile_controller.dart';
import 'package:khaabd/storage/local_storage.dart';

import '../../storage/storage_keys.dart';

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
          child: SingleChildScrollView(
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
                      style: Theme.of(context).textTheme.bodyMedium,
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
                Gap(26.h),
                Text(LocalStorage.getString(StorageKeys.userName).toString()),
                Gap(30.h),
                GestureDetector(
                  onTap: () {
                    showImageDialog(
                      context,
                      Assets.images.noprofile.path,
                      controller,
                    );
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
                      onTap: () {
                        NavigationHelper.navigateTo('/ChangePassword');
                      },
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
                Gap(30.h),
                GestureDetector(
                  onTap: () async {
                    await LocalStorage.remove(StorageKeys.userEmail);
                    await LocalStorage.remove(StorageKeys.userPassword);
                    Get.offAllNamed(Routes.loginScreen);
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
                        'LogOut',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void showImageDialog(
  BuildContext context,
  String imagePath,
  ProfileController controller,
) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 250,
        // width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ThemeManager.white,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 23,
              left: 85,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  Assets.images.noprofile.path,
                  height: 80.h,
                  width: 80.w,
                ),
              ),
            ),
            Positioned(
              top: 125,
              left: 3,
              child: SizedBox(
                width: 252.w,
                height: 32.h,
                child: TextFormField(
                  controller: controller.usernameController,
                  validator: (String? value) => customValidator(value, context),
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
            ),
            Positioned(
              top: 180,
              left: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 32,
                      width: 116,
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
                  SizedBox(width: 12),
                  GestureDetector(
                    onTap: () async {
                      Navigator.pop(context);
                      await LocalStorage.setString(
                        StorageKeys.userName,
                        controller.usernameController.text,
                      );
                    },
                    child: Container(
                      height: 32,
                      width: 116,
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
            ),
            Positioned(
              top: 68,
              left: 150,
              child: SvgPicture.asset(
                Assets.svgs.camera,
                color: ThemeManager.secondaryColor,
                height: 24.h,
                width: 24.w,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
