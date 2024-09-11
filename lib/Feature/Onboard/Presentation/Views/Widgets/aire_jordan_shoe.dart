import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AireJordanShoe extends StatelessWidget
{
  const AireJordanShoe({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        FadeInRightBig(child: const Image(image: AssetImage('Assets/Images/Aire Jordan Nike.png'))),

        Positioned(
          top: 120.h,
          left: 30.w,
          child: FadeInRightBig(child: const Image(image: AssetImage('Assets/Images/Background of aire jordan.png'))),
        ),

        Positioned(
          top: 335.h,
          right: 100.w,
          child: FadeInRightBig(child: const Image(image: AssetImage('Assets/Images/Shadow of aire jordan shoe.png'))),
        ),
      ],
    );
  }
}