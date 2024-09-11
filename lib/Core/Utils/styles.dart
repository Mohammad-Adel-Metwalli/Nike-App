import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant_colors.dart';

abstract class Styles
{
  static TextStyle fontStyleWhite65 = TextStyle(color: white, fontSize: 65.sp, fontWeight: FontWeight.bold);
  static TextStyle fontStyleWhite30 = TextStyle(color: white, fontSize: 30.sp, fontWeight: FontWeight.bold);
  static OutlineInputBorder styleOfTextFormField() => OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: const BorderSide(color: lightBlack, width: 1.2));
  static OutlineInputBorder styleOfTextFormFieldError() => OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: const BorderSide(color: red, width: 1.2));
  static TextStyle styleOfSearchBarFont = GoogleFonts.poppins(color: lightGrey1, fontSize: 12.sp, fontWeight: FontWeight.w500);
}