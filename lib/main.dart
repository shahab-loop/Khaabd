import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:khaabd/core/utils/size_utils.dart';

import 'core/navigations/app_routes/app_routes.dart';
import 'core/res/theme/theme_manager/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'khaabd',
          scrollBehavior: MyBehavior(),
          darkTheme: ThemeManager.darkTheme,
          locale: const Locale('en', 'US'),
          getPages: AppRoutes.pages,
        );
      },
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
