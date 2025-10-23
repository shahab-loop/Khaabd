import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:khaabd/core/utils/size_utils.dart';


class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final double? fontSize;
  final String Svg;
  final Color BorderColor ;
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    this.textColor = Colors.white,
    this.borderRadius = 4,
    this.width,
    this.height,
    this.padding,
    this.fontSize,
    required this.BorderColor, required this.Svg,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),side: BorderSide(color: BorderColor)
          ),
          padding: padding,
        ),
        onPressed: onPressed,
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize ?? 16,
            ),
          ),
            Gap(10.w),
            SvgPicture.asset(Svg),

          ],
        ),
      ),
    );
  }
}
