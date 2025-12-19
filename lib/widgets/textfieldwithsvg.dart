import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khaabd/core/res/theme/theme_manager/theme_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String hintText;
  final bool obscure;
  final bool isPasswordField;

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;

  final String? prefixSvg;
  final String? suffixSvg;
  final String? suffixSvgOff;
  final Color? prefixColor;
  final Color? suffixColor;
  final double? width;
  final Color? hintColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final EdgeInsetsGeometry? contentPadding;
  final int maxLines;
  final int? minLines;
  final bool useUnderlineBorder;

  const TextFormFieldWidget({
    super.key,
    required this.hintText,
    this.obscure = false,
    this.isPasswordField = false,
    this.controller,
    this.validator,
    this.onChanged,
    this.prefixSvg,
    this.suffixSvg,
    this.suffixSvgOff,
    this.prefixColor,
    this.suffixColor,
    this.width,
    this.hintColor,
    this.borderColor,
    this.focusedBorderColor,
    this.contentPadding,
    this.maxLines = 1,
    this.minLines,
    this.useUnderlineBorder = false,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.obscure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final enabledColor =
        widget.borderColor ?? ThemeManager.primaryColor!;
    final focusedColor =
        widget.focusedBorderColor ?? ThemeManager.primaryColor!;

    final InputBorder border = widget.useUnderlineBorder
        ? UnderlineInputBorder(
      borderSide: BorderSide(color: enabledColor),
    )
        : OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: enabledColor),
    );

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 48.px, // 👈 maintains field size
        maxWidth: widget.width ?? 327.px,
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPasswordField ? _obscureText : false,
        validator: widget.validator,
        onChanged: widget.onChanged,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        style: TextStyle(
          color: ThemeManager.darkGrey,
          fontSize: 14.px,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: widget.hintColor ?? Colors.grey,
            fontSize: 12.px,
          ),

          contentPadding: widget.contentPadding ??
              const EdgeInsets.symmetric(horizontal: 12, vertical: 14),

          border: border,
          enabledBorder: border,
          focusedBorder: border,
          errorBorder: border.copyWith(
            borderSide: const BorderSide(color: Colors.red),
          ),

          errorStyle: const TextStyle(
            fontSize: 11,
            height: 1.2, // 👈 prevents jump
          ),

          prefixIcon: widget.prefixSvg != null
              ? Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset(
              widget.prefixSvg!,
              colorFilter: ColorFilter.mode(
                widget.prefixColor ??
                    ThemeManager.secondaryColor!,
                BlendMode.srcIn,
              ),
              width: 20,
              height: 20,
            ),
          )
              : null,

          suffixIcon: widget.isPasswordField
              ? InkWell(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                _obscureText
                    ? widget.suffixSvg!
                    : widget.suffixSvgOff!,
                colorFilter: ColorFilter.mode(
                  widget.suffixColor ??
                      ThemeManager.secondaryColor!,
                  BlendMode.srcIn,
                ),
                width: 20,
                height: 20,
              ),
            ),
          )
              : null,
        ),
      ),
    );
  }
}
