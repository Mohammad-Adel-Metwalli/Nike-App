import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CustomHomeAppBarTitle extends StatelessWidget
{
  const CustomHomeAppBarTitle({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Text('Explore', style: TextStyle(color: lightBlack, fontWeight: FontWeight.bold, fontSize: 32.sp)),

        Positioned(
          bottom: 28.h,
          right: 105.w,
          child: const Image(image: AssetImage('Assets/Images/Graphic Home View.png')),
        ),
      ],
    );
  }
}