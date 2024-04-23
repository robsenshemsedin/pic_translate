import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pic_translate/resources/resources.dart';

class AppStyles {
  static TextStyle appTitleStyle = GoogleFonts.tiltNeon(
      fontWeight: FontWeight.bold, letterSpacing: 2, fontSize: 20);

  static TextStyle dropDownTextStyle = GoogleFonts.roboto(
    letterSpacing: 0.2,
    wordSpacing: 2,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );
  static TextStyle pickPhotTextStyle = GoogleFonts.abel(
    fontSize: 30,
    fontWeight: FontWeight.w800,
  );
  static InputDecoration textFieldDecoration = InputDecoration(
    hintMaxLines: 1,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
          BorderRadiusSizes.lg), // Adjust the radius for desired curvature
    ),
  );
  static ButtonStyle customButtonStyle = ElevatedButton.styleFrom(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
  );
  static ShapeBorder cardShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
  );
}
