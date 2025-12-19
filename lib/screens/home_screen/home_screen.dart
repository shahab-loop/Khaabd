import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/app_const/app_const.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/navigations/routes/routes.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        NavigationHelper.navigateTo(Routes.profileScreen);
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
                        NavigationHelper.navigateTo(Routes.notificationScreen);
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
                    TextFormFieldWidget(
                      hintText: 'Search for food or restaurant...',
                      prefixSvg: Assets.svgs.search,
                      prefixColor: ThemeManager.darkGrey,
                      width: 289.5.w,
                      // height: 40.h,
                      onChanged: (value) {
                        controller.searchText.value = value;
                      },
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Special offers',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Gap(8.h),
                const SpecialOffersCarousel(),
                Gap(25.h),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: AppConst.offersList.length,
                    itemBuilder: (context, index) {
                      var item = AppConst.offersList[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: CustomSmallContainer(
                          text: item.text,
                          backgroundColor: ThemeManager.white,
                          imagePath: item.imagePath,
                          onTap: () {
                            NavigationHelper.navigateTo(Routes.dealsScreen);
                          },
                          width: 100.w,
                          tappedTextColor: ThemeManager.secondaryColor,
                        ),
                      );
                    },
                  ),
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
                Obx(() {
                  final filtered = controller.filteredDishes;
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.filteredDishes.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.75,
                          mainAxisExtent: 250.8,
                        ),
                    itemBuilder: (context, index) {
                      final dish = filtered[index];
                      return CustomContainerWidget(
                        image: dish.imagePath,
                        restaurantName: dish.restaurantName,
                        dishName: dish.dishName,
                        price: dish.price,
                        onTap: () {
                          NavigationHelper.navigateTo(
                            Routes.itemDescription,
                            arguments: dish,
                          );
                        },
                      );
                    },
                  );
                }),
              ],
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
                        Text(
                          'Select Budget',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
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
                        Text(
                          'Select Category',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
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
                  Text(
                    'Any Specific Tags',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Gap(4),
                  TextFormField(
                    style: TextStyle(color: ThemeManager.darkGrey),
                    decoration: InputDecoration(
                      hintText: '#Food, #Pizza,',
                      fillColor: ThemeManager.primaryColor,
                      hintStyle: Theme.of(context).textTheme.labelSmall,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: ThemeManager.secondaryColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: ThemeManager.secondaryColor,
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
                  Text(
                    'Select City',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
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
                  child: Center(
                    child: Text(
                      'Apply Filters',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              ),
              Gap(35.h)
            ],
          ),
        ),
      );
    },
  );
}
