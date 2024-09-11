import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app/Feature/Onboard/Presentation/Views/Widgets/second_onboard_body.dart';

class SecondOnboard extends StatelessWidget
{
  const SecondOnboard({super.key, required this.pageController});
  final PageController pageController;

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
          right: 50.w,
          child: FadeInRightBig(child: const Image(image: AssetImage('Assets/Images/Graphic-board1.4.png'))),
        ),

        Positioned(
          top: 120.h,
          left: 40.w,
          child: FadeInLeftBig(child: const Image(image: AssetImage('Assets/Images/Graphic-board1.3.png'))),
        ),

        SecondOnboardBody(pageController: pageController),
      ],
    );
  }
}