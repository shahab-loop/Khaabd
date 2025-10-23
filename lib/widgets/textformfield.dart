import 'package:flutter/material.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final bool obsecure;
  const TextFormFieldWidget({super.key, required this.hintText, this.obsecure = false,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 48.px,width: 327.px,
      child: TextFormField(obscureText: obsecure,
style: TextStyle(color: ThemeManager.darkGrey),
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: ThemeManager.primaryColor,
          hintStyle: Theme.of(context).textTheme.labelSmall,
          border:InputBorder.none,
          // disabledBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
          // ),
           enabledBorder: UnderlineInputBorder(
               borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
           ),
          focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(4),borderSide: BorderSide(color: ThemeManager.primaryColor)
          ),
        ),
      ),
    );
  }
}

