// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontsStyle {
  static italicBoldNotoSans(double size) {
    return GoogleFonts.notoSans(
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontSize: size,
    );
  }

  static boldDmSerifText(double size) {
    return GoogleFonts.dmSerifText(
      fontWeight: FontWeight.bold,
      fontSize: size,
    );
  }

  static whiteLateef(double size) {
    return GoogleFonts.lateef(
      color: Colors.white,
      fontSize: size,
    );
  }

  static w990ItalicLato(double size) {
    return GoogleFonts.lato(
      color: Colors.white,
      fontSize: size,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w900
    );
  }

  static w990Lato(double size) {
    return GoogleFonts.lato(
      color: Colors.white,
      fontSize: size,
      fontWeight: FontWeight.w900
    );
  }


  static fg_w990Lato(double size, Color color) {
    return GoogleFonts.lato(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w900
    );
  }
  
  static lato(double size, Color color) {
    return GoogleFonts.lato(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w900
    );
  }
}