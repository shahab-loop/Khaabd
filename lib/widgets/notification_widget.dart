import 'package:flutter/material.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/utils/size_utils.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          Assets.images.notificationpic.path,
          height: 40.h,
          width: 40.w,
        ),
      )
    ],);
  }
}
