import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/Feature/Onboard/Presentation/Views/Widgets/second_onboard.dart';
import 'package:nike_app/Feature/Onboard/Presentation/Views/Widgets/third_onboard.dart';
import 'custom_smooth_page_indicator.dart';
import 'first_onboard.dart';

class OnboardViewBody extends StatefulWidget
{
  const OnboardViewBody({super.key,});

  @override
  State<OnboardViewBody> createState() => _OnboardViewBodyState();
}

class _OnboardViewBodyState extends State<OnboardViewBody>
{
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        PageView(
          onPageChanged: (data) => setState(() => currentPage = data),
          controller: pageController,
          children: [
            FirstOnboard(pageController: pageController),

            SecondOnboard(pageController: pageController),

            const ThirdOnboard(),
          ],
        ),

        CustomSmoothPageIndicator(currentPage: currentPage),
      ],
    );
  }
}