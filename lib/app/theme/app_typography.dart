import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  AppTypography._();

  // Primary Font Families
  static TextStyle get headingFont => GoogleFonts.outfit();
  static TextStyle get bodyFont => GoogleFonts.plusJakartaSans();

  // Type Scale Properties
  static TextStyle get display => headingFont.copyWith(
        fontSize: 36,
        fontWeight: FontWeight.w600,
        height: 1.2,
      );

  static TextStyle get heading => headingFont.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.3,
      );

  static TextStyle get subheading => bodyFont.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.4,
      );

  static TextStyle get body => bodyFont.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      );

  static TextStyle get caption => bodyFont.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.4,
      );

  static TextStyle get tinyLabel => bodyFont.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        height: 1.3,
        letterSpacing: 0.5,
      );
}
