import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/role_screen/controller/role_controller.dart';
import 'package:khaabd/widgets/base_scaffold.dart';
import 'package:khaabd/widgets/customised_widget.dart';

class RoleScreen extends StatelessWidget {
  static const String routeName = '/RoleScreen';
  const RoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RoleController controller = Get.find<RoleController>();

    return BaseScaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Text(
                'Choose your role',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Gap(40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() => GestureDetector(
                    onTap: () => controller.selectFoodLover(),
                    child: Container(
                      height: 280.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: controller.isFoodLoverSelected.value
                              ? ThemeManager.secondaryColor
                              : ThemeManager.greyColor,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 74.w,
                            height: 147.h,
                            child: Image.asset(
                              Assets.images.usersite.path,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Gap(10.h),
                          Text(
                            "I'm a \n Food Lover",
                            style:
                            Theme.of(context).textTheme.headlineSmall,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )),

                  Gap(16.w),

                  Obx(() => GestureDetector(
                    onTap: () => controller.selectRestaurantOwner(),
                    child: Container(
                      height: 280.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: controller.isRestaurantOwnerSelected.value
                              ? ThemeManager.secondaryColor
                              : ThemeManager.greyColor,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 74.w,
                            height: 147.h,
                            child: Image.asset(
                              Assets.images.chef.path,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Gap(10.h),
                          Text(
                            "I'm a\nRestaurant Owner",
                            style:
                            Theme.of(context).textTheme.headlineSmall,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
              Gap(40.h),
              Text(
                "Discover Exclusive Food Deals",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              Gap(16.h),
              Text(
                "️🍽️ Browse top-rated restaurants \n💸 Unlock the best local offers \n⭐ Read and share honest reviews,\n🔔 Get notified about new deals and promotions",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              Gap(40.h),
              CustomElevatedButton(
                text: 'Next ',
                onPressed: () {
                  NavigationHelper.navigateTo('/LoginScreen');
                },
                backgroundColor: ThemeManager.secondaryColor,
                BorderColor: ThemeManager.secondaryColor,
                Svg: Assets.svgs.arrow,
                borderRadius: 50,
                height: 56.h,
                width: 200.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
