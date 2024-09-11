import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/styles.dart';

class FirstOnboardUpperSection extends StatelessWidget
{
  const FirstOnboardUpperSection({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return FadeInDownBig(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Text('WELCOME TO\nNIKE', style: Styles.fontStyleWhite30, textAlign: TextAlign.center),

          Positioned(
            bottom: 66.h,
            right: 196.w,
            child: const Image(image: AssetImage('Assets/Images/Graphic-board1.1.png')),
          ),
        ],
      ),
    );
  }
}