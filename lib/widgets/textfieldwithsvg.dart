import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFormFieldSvgs extends StatelessWidget {
  final String hintText;
  final bool obsecure;
  final String? prefixSvg; // SVG icon before hint
  final String? suffixSvg; // SVG icon after hint

  const TextFormFieldSvgs({
    super.key,
    required this.hintText,
    this.obsecure = false,
    this.prefixSvg,
    this.suffixSvg,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.px,
      width: 327.px,
      child: TextFormField(
        obscureText: obsecure,
        style: TextStyle(
          color: Colors.grey[800],
          fontSize: 16.px,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[400],fontSize: 14.px),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeManager.darkGrey, width: 1),
          ),
          prefixIcon: prefixSvg != null
              ? Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              prefixSvg!,
              colorFilter: ColorFilter.mode(
                ThemeManager.secondaryColor!,
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
                ThemeManager.secondaryColor!,
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
