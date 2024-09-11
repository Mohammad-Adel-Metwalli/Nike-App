import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class TitleAndSubTitleThirdOnboard extends StatelessWidget
{
  const TitleAndSubTitleThirdOnboard({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      bottom: 210.h,
      left: 85.w,
      child: Column(
        children: [
          FadeInRightBig(child: Text('You Have The\nPower To', style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 34.sp), textAlign: TextAlign.center)),

          FadeInRightBig(child: Text('Smart, Gorgeous & Fashionable\nCollection Explore Now', style: TextStyle(color: white, fontSize: 16.sp), textAlign: TextAlign.center)),
        ],
      ),
    );
  }
}