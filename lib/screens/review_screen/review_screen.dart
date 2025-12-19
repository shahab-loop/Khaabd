import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/navigations/routes/routes.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/restaurent_details/controller/review_controller.dart';
import 'package:khaabd/widgets/customised_widget.dart';
import 'package:khaabd/widgets/review_widget.dart';

class ReviewScreen extends StatelessWidget {
  static const String routeName = '/ReviewScreen';
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ReviewController controller = Get.find<ReviewController>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Ratings & Reviews',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  '5.0',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 32),
                ),
                Gap(4),
                Padding(
                  padding: const EdgeInsets.only(left:80.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(Assets.svgs.star, height: 32,width: 32),
                      SvgPicture.asset(Assets.svgs.star, height: 32,width: 32),
                      SvgPicture.asset(Assets.svgs.star, height: 32,width: 32),
                      SvgPicture.asset(Assets.svgs.star, height: 32,width: 32),
                      SvgPicture.asset(Assets.svgs.star, height: 32,width: 32),
                    ],
                  ),
                ),

                Gap(24.h),
                Divider(height: 1, thickness: 1, color: ThemeManager.greyColor),
                Gap(8.h),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),
                ReviewWidget(
                  userName: 'Mohsin',
                  comment:
                      'Very cooperative seller and equipment just like new.',
                ),

                Gap(16.w),
                CustomElevatedButton(
                  text: 'Add Review',
                  onPressed: () {
                    showAppBottomSheet(context, );
                  },
                  backgroundColor: ThemeManager.secondaryColor,
                  BorderColor: ThemeManager.secondaryColor,
                  width: 140.w,
                  borderRadius: 50,
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void showAppBottomSheet(BuildContext context,) {
  showModalBottomSheet(
    context: context,
    backgroundColor: ThemeManager.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 16,
          right: 16,
          top: 12,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Text(
               'Review',
               style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 22),
             ),
             Text(
               'Add Your Restaurant Experience ',
               style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w400,color: ThemeManager.darkGrey),
             ),
             ClipRRect(
               borderRadius: BorderRadius.circular(8),
               child: Image.asset(
                 Assets.images.profile.path,
                 height: 56.h,
                 width: 56.w,
               ),
             ),
             Text(
               'Mohsin',
               style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500,color: ThemeManager.black),
             ),
           ],
          ),
        ),
      );
    },
  );
}
