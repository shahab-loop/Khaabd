import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaabd/screens/auth/Login_screen/login_screen.dart';

class LoginController extends GetxController {
final GlobalKey<FormState> formKey = GlobalKey<FormState>();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
  void goToLoginScreen() {
    Get.toNamed(LoginScreen.routeName);
  }
}
