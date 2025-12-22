import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaabd/screens/profile/profile_screen.dart';

class ProfileController extends GetxController {
final TextEditingController usernameController = TextEditingController();
  void goToProfileScreen() {
    Get.toNamed(ProfileScreen.routeName);
  }
}


