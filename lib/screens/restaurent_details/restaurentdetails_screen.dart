import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/navigations/routes/routes.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/home_screen/home_screen.dart';
import 'package:khaabd/screens/restaurent_details/controller/restaurentdetails_controller.dart' hide showAppBottomSheet;
import 'package:khaabd/widgets/customised_widget.dart';
import 'package:khaabd/widgets/review_widget.dart';
import 'package:khaabd/widgets/textfieldwithsvg.dart';


class RestaurentDetailsScreen extends StatelessWidget {
  static const String routeName = '/RestaurentDetailsScreen';
  const RestaurentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RestaurentDetailsController controller =
        Get.find<RestaurentDetailsController>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
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
                    Gap(16.w),
                    Text(
                      'Restaurant Details',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                Gap(20.h),

                Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: ThemeManager.yellow,
                  ),
                  child: Center(
                    child: SizedBox(
                      height: 128.h,
                      width: 213.33.w,
                      child: Image.asset(
                        Assets.images.cheesious.path,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Gap(16.h),
                SizedBox(
                  width: 342.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Restaurant Name',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Gap(4.h),
                      Text(
                        'Cheezious',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(8.h),
                Divider(
                  height: 1.h,
                  thickness: 1,
                  color: ThemeManager.greyColor,
                ),
                Gap(8.h),
                SizedBox(
                  width: 342.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cuisine Type',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Gap(4.h),
                      Text(
                        'Fast food ',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(8.h),
                Divider(
                  height: 1.h,
                  thickness: 1,
                  color: ThemeManager.greyColor,
                ),
                Gap(8.h),
                SizedBox(
                  width: 342.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Restaurant Address',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Gap(4.h),
                      Text(
                        'johar town Lahore',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(8.h),
                Divider(
                  height: 1.h,
                  thickness: 1,
                  color: ThemeManager.greyColor,
                ),
                Gap(8.h),
                SizedBox(
                  width: 342.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Restaurant City',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Gap(4.h),
                      Text(
                        'Lahore',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(8.h),
                Divider(
                  height: 1.h,
                  thickness: 1,
                  color: ThemeManager.greyColor,
                ),
                Gap(8.h),
                SizedBox(
                  width: 342.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Restaurant Phone Number',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Gap(4.h),
                      Text(
                        '090078601',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(8.h),
                Divider(
                  height: 1.h,
                  thickness: 1,
                  color: ThemeManager.greyColor,
                ),
                Gap(8.h),
                SizedBox(
                  width: 342.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Gap(4.h),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(8.h),
                Divider(
                  height: 1.h,
                  thickness: 1,
                  color: ThemeManager.greyColor,
                ),
                Gap(8.h),
                Gap(16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ratings & Reviews',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Row(
                      children: [
                        Text(
                          '5.0',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Gap(4.w),
                        SvgPicture.asset(Assets.svgs.star),
                        SvgPicture.asset(Assets.svgs.star),
                        SvgPicture.asset(Assets.svgs.star),
                        SvgPicture.asset(Assets.svgs.star),
                        SvgPicture.asset(Assets.svgs.star),
                      ],
                    ),
                  ],
                ),
                Gap(8.h),
                Divider(height: 1, thickness: 1, color: ThemeManager.greyColor),
                Gap(8.h),
                ReviewWidget(userName: 'Mohsin', comment: 'Very cooperative seller and equipment just like new.',),
                ReviewWidget(userName: 'Mohsin', comment: 'Very cooperative seller and equipment just like new.',),
                Gap(16.h),
                Padding(
                  padding: EdgeInsets.only(left: 115.w),
                  child: GestureDetector(onTap: () {
NavigationHelper.navigateTo(Routes.reviewScreen);
                  },
                    child: SizedBox(
                      child: Row(
                        children: [
                          Text(
                            'View All (24)',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Gap(4.w),
                          SvgPicture.asset(
                            Assets.svgs.arrow,
                            color: ThemeManager.secondaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Gap(16.w),
                CustomElevatedButton(
                  text: 'Add Review',
                  onPressed: () {
                    showAppBottomSheet(context, );
                  },
                  backgroundColor: ThemeManager.secondaryColor,
                  BorderColor: ThemeManager.secondaryColor,
                  width:140.w ,borderRadius:50,height: 40.h,
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
              Gap(8.h),
              Text(
                'Add Your Restaurant Experience ',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 16,fontWeight: FontWeight.w100,color: ThemeManager.Darkgrey),
              ),
              Gap(24.h),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  Assets.images.profile.path,
                  height: 56.h,
                  width: 56.w,
                ),
              ),
              Gap(1.h),
              Text(
                'Mohsin',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500,color: ThemeManager.black),
              ),
              Gap(4.w),

              Gap(12.h),
              TextFormFieldWidget(hintText: 'Comment',borderColor: ThemeManager.secondaryColor,maxLines: 5,width: 310,),
              Gap(25.h),
              Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    text: 'Cancel',
                    onPressed: () {
                      showAppBottomSheet(context, );
                    },
                    backgroundColor:ThemeManager.white ,
                    BorderColor: ThemeManager.grey1,
                    width: 140.w,
                    borderRadius: 50,
                    height: 40.h,
                    textColor: ThemeManager.grey1,
                  ),
                  CustomElevatedButton(
                    text: 'Submit',
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
Gap(35.h)
            ],
          ),
        ),
      );
    },
  );
}
