import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/navigations/routes/routes.dart';
import 'package:khaabd/storage/local_storage.dart';

import '../../../storage/storage_keys.dart';

class SplashController extends GetxController {
  final Duration splashDuration = const Duration(seconds: 3);

  @override
  void onInit() {
    super.onInit();
    log(LocalStorage.getString(StorageKeys.userEmail).toString());

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startSplashTimer();
    });
  }

  void _startSplashTimer() {
    Future.delayed(splashDuration, _navigateToNext);
  }

  void _navigateToNext() {
    if (isClosed) return;

    final isFirstTime = LocalStorage.getBool(StorageKeys.isFirstTime) ?? false;
    final isUserLogin = LocalStorage.getString(StorageKeys.userEmail) ?? "";

    if (isFirstTime) {
      Get.offAllNamed(Routes.loginScreen);
    } else if(isUserLogin.isNotEmpty) {
      Get.offAllNamed(Routes.homeScreen);
    } else {
      Get.offAllNamed(Routes.loginScreen);
    }
  }
}
