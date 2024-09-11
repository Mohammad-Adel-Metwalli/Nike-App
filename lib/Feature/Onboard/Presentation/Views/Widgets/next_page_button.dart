import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class NextPageButton extends StatelessWidget
{
  const NextPageButton({super.key, this.onPressed, required this.text,});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: MaterialButton(
        height: 50.h,
        color: white,
        onPressed: onPressed,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Center(child: Text(text, style: TextStyle(color: lightBlack, fontWeight: FontWeight.bold, fontSize: 17.sp))),
      ),
    );
  }
}