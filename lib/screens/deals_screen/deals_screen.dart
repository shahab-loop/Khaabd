import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/deals_screen/controller/deals_controller.dart';
import 'package:khaabd/widgets/customcontainer_widget.dart';
import 'package:khaabd/widgets/customsmall_containers.dart';

class DealsScreen extends StatelessWidget {
  static const String routeName = '/DealsScreen';
  const DealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DealsController controller = Get.find<DealsController>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: ThemeManager.white,
                    ),
                  ),
                  Text(
                    'Cheesious',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SvgPicture.asset(Assets.svgs.home,color: ThemeManager.secondaryColor,height:24.h ,width: 24.w,)
                ],
              ),
              Gap(40.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      NavigationHelper.navigateTo('/DealsScreen');
                    },
                    child: SizedBox(
                      child: CustomSmallContainer(
                        text: 'Deals',
                        backgroundColor: ThemeManager.white,
                        imagePath: Assets.images.offer.path,
                        width: 100.w,
                        tappedTextColor: ThemeManager.secondaryColor,
                      ),
                    ),
                  ),
                  Gap(8.w),
                  CustomSmallContainer(
                    text: 'Offers',
                    backgroundColor: ThemeManager.white,
                    imagePath: Assets.images.delicious.path,
                    tappedTextColor: ThemeManager.secondaryColor,
                    width: 100.w,
                  ),
                  Gap(8.w),
                  CustomSmallContainer(
                    text: 'High Tea',
                    backgroundColor: ThemeManager.white,
                    imagePath: Assets.images.tea.path,
                    tappedTextColor: ThemeManager.secondaryColor,
                    width: 120.w,
                  ),
                ],
              ),
              Gap(16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Deals',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'View All >',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
              Gap(8.h),
              Row(
                children: [
                  // CustomContainerWidget(
                  //   image: Assets.images.delicious.path,
                  // ),
                  // Gap(12.w),
                  // CustomContainerWidget(
                  //   image: Assets.images.biryani.path,
                  // ),
                ],
              ),
              Gap(12.h),
              Row(
                children: [
                  // CustomContainerWidget(
                  //   image: Assets.images.hotburger.path,
                  // ),
                  // Gap(12.w),
                  // CustomContainerWidget(
                  //   image: Assets.images.burger.path,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
