import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaabd/screens/auth/register_screen/register_screen.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  void goToRegisterScreen() {
    Get.toNamed(RegisterScreen.routeName);
  }
}
