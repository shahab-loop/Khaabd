import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:khaabd/core/generated/assets.gen.dart';
import 'package:khaabd/core/navigations/navigation_helper/navigation_helper.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:khaabd/core/utils/size_utils.dart';
import 'package:khaabd/screens/auth/register_screen/controller/register_controller.dart';
import 'package:khaabd/widgets/base_scaffold.dart';
import 'package:khaabd/widgets/customised_widget.dart';
import 'package:khaabd/widgets/textfieldwithsvg.dart';
import 'package:khaabd/widgets/textformfield.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = '/RegisterScreen';
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RegisterController controller = Get.find<RegisterController>();
    return BaseScaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: GestureDetector(
                  onTap: () {
                    NavigationHelper.goBack();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: ThemeManager.white,
                    size: 30,
                  ),
                ),
              ),
              Gap(4.w),
              Text(
                'Create Your \nAccount',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ],
          ),
          Gap(84.h),
          Container(
            height: 584.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ThemeManager.white,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(40) ,topRight:Radius.circular(40) ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:16 ,left:24 ,right:24 ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text('Food Lover',style: Theme.of(context).textTheme.bodyLarge,),
                    Gap(40.h),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Your Name',style: Theme.of(context).textTheme.bodySmall,),
                      ],
                    ),
                    TextFormFieldWidget(hintText: 'Example@gmail.com',),
                    Gap(16.h),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Gmail',style: Theme.of(context).textTheme.bodySmall,),
                      ],
                    ),
                    TextFormFieldWidget(hintText: 'Example@gmail.com',),
                    Gap(16.h),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Password',style: Theme.of(context).textTheme.bodySmall,),
                      ],
                    ),
                    TextFormFieldSvgs(
                      hintText: 'Input Password',
                      suffixSvg: Assets.svgs.eye,
                    ),
                    Gap(16.h),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Confirm Password',style: Theme.of(context).textTheme.bodySmall,),
                      ],
                    ),
                    TextFormFieldSvgs(
                      hintText: '*********',
                      suffixSvg: Assets.svgs.hide,
                    ),
                    Gap(80.h),
                    CustomElevatedButton(text: 'Log In', onPressed: () {NavigationHelper.navigateTo('/AccountAuthenticationScreen');
                      }, backgroundColor: ThemeManager.secondaryColor, BorderColor: ThemeManager.secondaryColor, Svg: '',height:56.h ,width:342.w ,borderRadius:50 ,fontSize:20 ,),
                    Gap(24.h),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("I have an account?",style: Theme.of(context).textTheme.labelSmall,),
                      ],
                    ),
                    Gap(4.h),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(onTap: () {
                      NavigationHelper.navigateTo('/HomeScreen');
                        },child: Text('Sign In',style: Theme.of(context).textTheme.labelMedium,)),
                      
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
