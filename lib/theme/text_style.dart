import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_flutter/theme/colors.dart';

class TextStyleThemeData {
  static const fontSize24ColorWhite =
      TextStyle(fontSize: 24, color: ColorThemeData.colorWhite);
  static const fontSize16ColorWhite =
      TextStyle(fontSize: 16, color: ColorThemeData.colorWhite);
}

class TextGoogleFontThemeData {
  static final googleFont24 = GoogleFonts.lato(
      color: ColorThemeData.colorWhitePurple,
      fontSize: 24,
      fontWeight: FontWeight.bold);
  static final googleFont16 = GoogleFonts.lato(
      color: ColorThemeData.colorWhite,
      fontSize: 16,
      fontWeight: FontWeight.bold);

  static final googleFont12Purple = GoogleFonts.lato(
      color: ColorThemeData.colorWhitePurple,
      fontSize: 12,
      fontWeight: FontWeight.bold);
  static final googleFont12Blue = GoogleFonts.lato(
      color: ColorThemeData.colorBlue,
      fontSize: 12,
      fontWeight: FontWeight.bold);
}
