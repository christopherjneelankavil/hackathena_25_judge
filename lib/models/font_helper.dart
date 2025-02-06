// Font Helper Class (models/font_helper.dart)
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontHelper {
  static Widget customFont(
      String content,
      double fontSize,
      FontWeight fontWeight,
      Color color,
      ) {
    return Text(
      content,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}