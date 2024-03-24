import 'package:athenacapm/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle myTextStyle({
  double? fontSize,
  Color? color,
  FontWeight? fontWeight,
}) {
  return GoogleFonts.openSans(
    fontWeight: fontWeight?? FontWeight.w400, // Font weight 400
    fontSize: fontSize ?? 14.0, // Default font size 14.0, can be overridden by the user
    color: color ?? Colors.black, // Default color is black, can be overridden by the user
  );
}

TextStyle myTextStyle1({
  double? fontSize,
  Color? color,
  FontWeight? fontWeight,
}) {
  return GoogleFonts.openSans(
    fontWeight: fontWeight?? FontWeight.w700, // Font weight 400
    fontSize: fontSize ?? 16.0, // Default font size 14.0, can be overridden by the user
    color: color ?? darkBlueColor, // Default color is black, can be overridden by the user
  );
}