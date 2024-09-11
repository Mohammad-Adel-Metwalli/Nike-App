import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class TextFormFieldTitle extends StatelessWidget
{
  const TextFormFieldTitle({super.key, required this.title,});
  final String title;

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(left: 7.w),
    child: Text(title, style: TextStyle(color: lightBlack, fontWeight: FontWeight.w500, fontSize: 16.sp)),
  );
}