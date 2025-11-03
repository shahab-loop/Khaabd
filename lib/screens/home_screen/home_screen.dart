import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/home_screen/controller/homeScreen_controller.dart';
import 'package:khaabd/widgets/customcontainer_widget.dart';
import 'package:khaabd/widgets/customdropdownbutton.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(onTap:
                        () { NavigationHelper.navigateTo('/ProfileScreen');
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.images.profile.path,
                            height: 40.h,
                            width: 40.w,
                          ),
                        ),
                      ),
                      Gap(8.w),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            Assets.images.khaabd.path,
                            height: 80.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Gap(8.w),
                      GestureDetector(
                        onTap: () {
                          NavigationHelper.navigateTo('/NotificationScreen');
                        },
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
                      GestureDetector(onTap: () {
                        FocusScope.of(context).unfocus();
                      },
                        child: TextFormFieldSvgs(
                          hintText: 'Search for food or restaurant...',
                          prefixSvg: Assets.svgs.search,
                          prefixColor: ThemeManager.darkGrey,
                          width: 289.5.w,
                          height: 40.h,
                        ),
                      ),
                      Gap(12.w),
                      GestureDetector(
                        onTap: () => showAppBottomSheet(context, controller),
                        child: Container(
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
                      ),
                    ],
                  ),
                  Gap(16.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Special offers',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Gap(6.h),
                      const SpecialOffersCarousel(),
                    ],
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
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => showImageDialog(
                          context,
                          Assets.images.delicious.path,
                        ),
                        child: CustomContainerWidget(
                          image: Assets.images.delicious.path,
                          item: const {},
                        ),
                      ),
                      Gap(12.w),
                      GestureDetector(
                        onTap: () => showImageDialog(
                          context,
                          Assets.images.biryani.path,
                        ),
                        child: CustomContainerWidget(
                          image: Assets.images.biryani.path,
                          item: const {},
                        ),
                      ),
                    ],
                  ),
                  Gap(12.h),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => showImageDialog(
                          context,
                          Assets.images.hotburger.path,
                        ),
                        child: CustomContainerWidget(
                          image: Assets.images.hotburger.path,
                          item: const {},
                        ),
                      ),
                      Gap(12.w),
                      GestureDetector(
                        onTap: () =>
                            showImageDialog(context, Assets.images.burger.path),
                        child: CustomContainerWidget(
                          image: Assets.images.burger.path,
                          item: const {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showImageDialog(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(imagePath, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: SvgPicture.asset(Assets.svgs.cross),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    ),
  );
}

void showAppBottomSheet(BuildContext context, HomeScreenController controller) {
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
              Container(
                width: 80.w,
                height: 2.h,
                decoration: BoxDecoration(
                  color: ThemeManager.black,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Gap(16),
              Text("Filter", style: Theme.of(context).textTheme.titleLarge),
              Gap(16),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Select Budget', style:Theme.of(context).textTheme.titleMedium,),
                        Gap(4.h),
                        CustomDropdown(),
                      ],
                    ),
                  ),
                  Gap(16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Select Category', style: Theme.of(context).textTheme.titleMedium,),
                        Gap(4.h),
                        CustomDropdown(),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Any Specific Tags',style: Theme.of(context).textTheme.titleMedium,),
                   Gap(4),
                  GestureDetector(onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                    child: TextFormField(
                      style: TextStyle(color: ThemeManager.darkGrey),
                      decoration: InputDecoration(
                        hintText:'#Food, #Pizza,',
                        fillColor: ThemeManager.primaryColor,
                        hintStyle: Theme.of(context).textTheme.labelSmall,
                        border:InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.secondaryColor)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.secondaryColor)
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Gap(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select City',style: Theme.of(context).textTheme.titleMedium,),
                  const Gap(4),
                  CustomDropdown(),
                ],
              ),

              Gap(24),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ThemeManager.secondaryColor,
                  ),
                  child: Center(child: Text('Apply Filters',style: Theme.of(context).textTheme.titleLarge,)),
                ),
              ),

            ],
          ),
        ),
      );
    },
  );
}
