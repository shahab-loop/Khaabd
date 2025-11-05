import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/notification_screen/controller/notification_controller.dart';
import 'package:khaabd/widgets/notification_widget.dart';


class NotificationScreen extends StatelessWidget {
  static const String routeName = '/NotificationScreen';
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NotificationScreenController controller =
    Get.find<NotificationScreenController>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: ThemeManager.white,
                    ),
                  ),
                  Gap(100.w),
                  Text(
                    'Notification Screen',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              Gap(40.h),
              Column(
                children: [
                  NotificationWidget(Time: '11:41 PM',),
                  NotificationWidget(Time: '4D',),
                  NotificationWidget(Time: '1W',),
                  NotificationWidget(Time: '1W',),
                  NotificationWidget(Time: '2W',),
                  NotificationWidget(Time: '3W',),],
              )

            ],
          ),
        ),
      ),
    );
  }
}
