import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';

class CustomContainerWidget extends StatelessWidget {
  final String image;
  final Map<String, dynamic> item;
  const CustomContainerWidget({
    super.key,
    required this.image,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      height: 226.h,
      width: 164.5.w,
      decoration: BoxDecoration(
        color: ThemeManager.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.asset(
              image,
              width: 173,
              height: 173,
              fit: BoxFit.fill,
            ),
          ),
          Gap(4.5.h),
          SizedBox(
            height: 16.h,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.svgs.home,
                    width: 15.5,
                    height: 15.5,
                    color: ThemeManager.black,
                  ),
                  Gap(2.w),
                  Text(
                    'Cook n Bull',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(4.5.h),
          Divider(height: 1, color: ThemeManager.black),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
              top: 3,
              bottom: 3,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'High Tea ',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  'Rs 1,999',
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
