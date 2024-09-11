import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app/Core/Widgets/sign_in_or_sign_up_with_google_button_body.dart';
import '../Utils/constant_colors.dart';

class SignInOrSignUpWithGoogleButton extends StatelessWidget
{
  const SignInOrSignUpWithGoogleButton({super.key, this.onPressed, required this.text,});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context)
  {
    return MaterialButton(
      color: white,
      height: 55.h,
      onPressed: onPressed,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SignInOrSignUpWithGoogleButtonBody(text: text),
    );
  }
}