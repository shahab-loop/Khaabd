import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaabd/screens/auth/accountauthentication_screen/accountauthentication_screen.dart';
class AccountAuthenticationController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController otpController = TextEditingController();
  void goToAccountAuthenticationScreen() {
    Get.toNamed(AccountAuthenticationScreen.routeName);
  }
}
