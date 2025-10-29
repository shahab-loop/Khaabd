import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/home_screen/controller/homeScreen_controller.dart';
import 'package:khaabd/widgets/customsmall_containers.dart';
import 'package:khaabd/widgets/specialoffercrousal.dart';
import 'package:khaabd/widgets/textfieldwithsvg.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeScreenController controller = Get.find<HomeScreenController>();
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        Assets.images.profile.path,
                        height: 38.h,
                        width: 38.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        Assets.images.khaabd.path,
                        height: 88.h,
                        width: 192.w,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 38.h,
                        width: 38.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ThemeManager.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            Assets.svgs.bell,
                            color: ThemeManager.darkGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextFormFieldSvgs(
                      hintText: 'Search for food or restaurant...',
                      prefixSvg: Assets.svgs.search,
                      prefixColor: ThemeManager.white,
                      width: 289.w,
                      height: 40.h,
                    ),
                    Gap(12.w),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: ThemeManager.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: SvgPicture.asset(
                          Assets.svgs.filter,
                          height: 18.28,
                          width: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(16.h),
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Special offers',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      Gap(6.h),
                      SpecialOffersCarousel(),
                    ],
                  ),
                ),
                Gap(16.h),
                Row(
                  children: [
                    CustomSmallContainer(
                      text: 'Deals',
                      backgroundColor: ThemeManager.white,
                      imagePath: Assets.images.offer.path,
                      width: 100.w,
                      tappedTextColor: ThemeManager.secondaryColor,
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
                      width: 120,
                    ),
                  ],
                ),
Gap(16.h),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Text('Popular Deals',style: Theme.of(context).textTheme.titleSmall,),
                  GestureDetector(onTap: () {

                  },
                      child: Text('View All >',style: Theme.of(context).textTheme.titleMedium,)),
                ],),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
