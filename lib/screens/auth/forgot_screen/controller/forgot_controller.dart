import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaabd/screens/auth/forgot_screen/forgot_screen.dart';

class ForgotController extends GetxController {
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
final TextEditingController emailController = TextEditingController();
  void goToForgotScreen() {
    Get.toNamed(ForgotScreen.routeName);
  }
}
