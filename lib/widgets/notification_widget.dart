import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';

class NotificationWidget extends StatelessWidget {
  final String Time;
  const NotificationWidget({super.key, required this.Time});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 64.h,width: 354,
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  Assets.images.notificationpic.path,
                  height: 40.h,
                  width: 40.w,
                ),
              ),
              Gap(8.w),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Cheesious',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 12,fontWeight: FontWeight.w600),
                      ),
                      Gap(4.h),
                      Text(
                        'New Deal',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ],
                  ),
                  Gap(5.h),
                  Row(
                    children: [
                      Text(
                        'Zinger with Drink',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(color:ThemeManager.white,fontSize: 11  ),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(130.w),
              Text(Time, style: Theme.of(context).textTheme.titleLarge),

            ],
          ),
          Gap(12.w),
          Divider(color: ThemeManager.Grey, height: 2,thickness: 2,),
        ],
      ),
    );
  }
}
