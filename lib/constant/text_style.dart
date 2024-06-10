import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static appLightTextStyle(Color color, double size) {
    return GoogleFonts.poppins(
      textStyle: GoogleFonts.poppins(),
      fontSize: size,
      fontWeight: FontWeight.w300,
      color: color,
    );
  }

  static appRegulerTextStyle(Color color, double size) {
    return GoogleFonts.poppins(
      textStyle: GoogleFonts.poppins(),
      fontSize: size,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static appRegulerItalicTextStyle(Color color, double size) {
    return GoogleFonts.poppins(
      textStyle: GoogleFonts.poppins(),
      fontSize: size,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w400,
      color: color,
    );
  }

  static appMediumTextStyle(Color color, double size) {
    return GoogleFonts.poppins(
        textStyle: GoogleFonts.poppins(),
        fontSize: size,
        fontWeight: FontWeight.w500,
        color: color);
  }

  static appSemiBoldTextStyle(Color color, double size) {
    return GoogleFonts.poppins(
      textStyle: GoogleFonts.poppins(),
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static appBoldTextStyle(Color color, double size) {
    return GoogleFonts.poppins(
      textStyle: GoogleFonts.poppins(),
      fontSize: size,
      fontWeight: FontWeight.w800,
      color: color,
    );
  }
}
