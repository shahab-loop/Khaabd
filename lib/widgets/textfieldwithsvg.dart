import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFormFieldSvgs extends StatelessWidget {
  final String hintText;
  final bool obsecure;
  final String? prefixSvg;
  final String? suffixSvg;
  final double? height;
  final double? width;
  final Color? prefixColor;
  final Color? suffixColor;
  final Color? hintColor;
  final ValueChanged<String>? onChanged; // <-- Add this

  const TextFormFieldSvgs({
    super.key,
    required this.hintText,
    this.obsecure = false,
    this.prefixSvg,
    this.suffixSvg,
    this.height,
    this.width,
    this.prefixColor,
    this.suffixColor,
    this.hintColor, // <-- added
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeManager.white,
        borderRadius: BorderRadius.circular(4),
      ),
      height: height ?? 48.px,
      width: width ?? 327.px,
      child: TextFormField(
        obscureText: obsecure,
        style: TextStyle(color: Colors.grey[800], fontSize: 16.px),
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintColor ?? Colors.grey[400],
            fontSize: 12.px,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeManager.darkGrey!, width: 1),
          ),
          prefixIcon: prefixSvg != null
              ? Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              prefixSvg!,
              colorFilter: ColorFilter.mode(
                prefixColor ?? ThemeManager.secondaryColor!,
                BlendMode.srcIn,
              ),
              width: 20,
              height: 20,
            ),
          )
              : null,
          suffixIcon: suffixSvg != null
              ? Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              suffixSvg!,
              colorFilter: ColorFilter.mode(
                suffixColor ?? ThemeManager.secondaryColor!,
                BlendMode.srcIn,
              ),
              width: 20,
              height: 20,
            ),
          )
              : null,
        ),
      ),
    );
  }
}
