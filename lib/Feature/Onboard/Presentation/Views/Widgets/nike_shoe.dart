import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NikeShoe extends StatelessWidget
{
  const NikeShoe({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        FadeInRightBig(child: const Image(image: AssetImage('Assets/Images/Nike shoes.png'))),

        Positioned(
          top: 250.h,
          left: 35.w,
          child: FadeInRightBig(child: const Image(image: AssetImage('Assets/Images/Shadow of nike shoes.png'))),
        ),
      ],
    );
  }
}