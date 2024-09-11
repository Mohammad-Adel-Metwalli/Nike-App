import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'first_onboard_body.dart';

class FirstOnboard extends StatelessWidget
{
  const FirstOnboard({super.key, required this.pageController,});
  final PageController pageController;

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        Positioned(
          top: 150.h,
          left: 20.w,
          child: FadeInRightBig(child: const Image(image: AssetImage('Assets/Images/Nike shoes with pants.png'))),
        ),

        Positioned(
          bottom: 170.h,
          child: FadeInLeftBig(child: const Image(image: AssetImage('Assets/Images/Nike-logo-transparent.png'))),
        ),

        Positioned(
          bottom: 420.h,
          left: 50.w,
          child: FadeInLeftBig(child: const Image(image: AssetImage('Assets/Images/Graphic-board1.4.png'))),
        ),

        Positioned(
          bottom: 125.h,
          right: 40.w,
          child: FadeInRightBig(child: const Image(image: AssetImage('Assets/Images/Graphic-board1.3.png'))),
        ),

        Positioned(
          bottom: 105.h,
          left: 10.w,
          child: Transform.rotate(
            angle: 17,
            child: FadeInLeftBig(child: const Image(image: AssetImage('Assets/Images/Graphic-board1.3.png'))),
          ),
        ),

        FirstOnboardBody(pageController: pageController),
      ],
    );
  }
}