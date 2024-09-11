import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/constant_colors.dart';

class SubmittingButton extends StatelessWidget
{
  const SubmittingButton({super.key, this.onPressed, required this.text,});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) => MaterialButton(
    color: blue,
    height: 55.h,
    onPressed: onPressed,
    minWidth: double.infinity,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Text(text, style: TextStyle(color: white, fontWeight: FontWeight.w600, fontSize: 14.sp)),
  );
}