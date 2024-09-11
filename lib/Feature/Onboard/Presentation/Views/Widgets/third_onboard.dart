import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app/Feature/Onboard/Presentation/Views/Widgets/third_onboard_body.dart';
import 'package:nike_app/Feature/Onboard/Presentation/Views/Widgets/title_and_sub_title_third_onboard.dart';

class ThirdOnboard extends StatelessWidget
{
  const ThirdOnboard({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        Positioned(
          bottom: 170.h,
          child: FadeInLeftBig(child: const Image(image: AssetImage('Assets/Images/Nike-logo-transparent.png'))),
        ),

        Positioned(
          top: 100.h,
          left: 50.w,
          child: FadeInRightBig(child: const Image(image: AssetImage('Assets/Images/Graphic-board3.png'))),
        ),

        const TitleAndSubTitleThirdOnboard(),

        const ThirdOnboardBody(),
      ],
    );
  }
}