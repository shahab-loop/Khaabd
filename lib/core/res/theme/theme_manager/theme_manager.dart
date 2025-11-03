import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static Color primaryColor = Color(0xff323B40);
  static Color white = Color(0xffFFFFFF);
  static Color greyColor = Color(0xffFFFFFF).withOpacity(0.44);
  static Color secondaryColor = Color(0xffD6AC67);
  static Color Grey = Color(0xffE7E7E7);
  static Color black = Color(0xff0C0D0D);
  static Color darkGrey = Color(0xff9B9C9C);

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    scaffoldBackgroundColor: ThemeManager.primaryColor,
    useMaterial3: false,
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.poppins(
        color: white,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: greyColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: GoogleFonts.poppins(
        color: white,
        fontSize: 10,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: GoogleFonts.poppins(
        color: secondaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: secondaryColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.poppins(
        color: ThemeManager.secondaryColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: GoogleFonts.poppins(
        color: ThemeManager.darkGrey,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      labelMedium: GoogleFonts.poppins(
        color: ThemeManager.black,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      labelLarge: GoogleFonts.poppins(
        color: ThemeManager.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      titleLarge: GoogleFonts.poppins(
        color: ThemeManager.white,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: GoogleFonts.poppins(
        color: ThemeManager.black,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: GoogleFonts.poppins(
        color: ThemeManager.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      displayMedium: GoogleFonts.poppins(
        color: ThemeManager.Grey,
        fontSize: 12,
        fontWeight: FontWeight.w200,
      ),
    ),
  );
}
