import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../Utils/constant_colors.dart';

class SignInOrSignUpWithGoogleButtonBody extends StatelessWidget
{
  const SignInOrSignUpWithGoogleButtonBody({super.key, required this.text,});
  final String text;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Brand(Brands.google),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.024),

        Text(text, style: TextStyle(color: lightBlack, fontWeight: FontWeight.w600, fontSize: 14.sp)),
      ],
    );
  }
}