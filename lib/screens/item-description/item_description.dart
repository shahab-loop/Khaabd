import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/item-description/controller/description_controller.dart';


class ItemDescription extends StatelessWidget {
  static const String routeName = '/ItemDescription';
  const ItemDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final DescriptionController controller = Get.find<DescriptionController>();

    return Scaffold(
      body: SafeArea(
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
                Gap(135.w),
                Text(
                  controller.dish.dishName,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            Gap(11.h),
            SizedBox(height:390.h ,width: 390.w,child: Image.asset(Assets.images.delicious.path,fit: BoxFit.fill,),),
             Gap(15.5.h),
            Padding(
              padding: const EdgeInsets.only(left:24,right: 24,top: 15.5),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                    Text(
                      'Title',
                      style: Theme.of(context).textTheme.displayLarge,),
                    Text(
                      'Price',
                      style: Theme.of(context).textTheme.displayLarge,),
                  ],),
                  Gap(4.0.h),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                    Text(
                      controller.dish.dishName,
                      style: Theme.of(context).textTheme.bodyMedium,),
                    Text(
                      "RS ${controller.dish.price.toString()}",
                      style: Theme.of(context).textTheme.bodyMedium,),
                  ],),
                  Gap(8.h),
                  Divider(color: ThemeManager.Grey,),
                  Gap(8.h),
                  Text(
                    'Description',
                    style: Theme.of(context).textTheme.displayLarge,),
                  Gap(4.h),
                  Text(
                    controller.dish.description,
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(color: ThemeManager.white),),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
