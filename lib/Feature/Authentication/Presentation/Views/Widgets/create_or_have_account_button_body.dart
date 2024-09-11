import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CreateOrHaveAccountButtonBody extends StatelessWidget
{
  const CreateOrHaveAccountButtonBody({super.key, required this.firstText, required this.secondText,});
  final String firstText, secondText;

  @override
  Widget build(BuildContext context) => RichText(
    text: TextSpan(
      style: GoogleFonts.raleway(fontSize: 16.sp, fontWeight: FontWeight.w500),
      children: [
        TextSpan(text: firstText, style: const TextStyle(color: lightGrey1)),
        TextSpan(text: secondText, style: const TextStyle(color: lightBlack)),
      ],
    ),
  );
}