import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'first_onboard_upper_section.dart';
import 'next_page_button.dart';

class FirstOnboardBody extends StatefulWidget
{
  const FirstOnboardBody({super.key, required this.pageController,});
  final PageController pageController;

  @override
  State<FirstOnboardBody> createState() => _FirstOnboardBodyState();
}

class _FirstOnboardBodyState extends State<FirstOnboardBody>
{
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),

          const FirstOnboardUpperSection(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          FadeInDownBig(child: const Image(image: AssetImage('Assets/Images/Graphic-board1.2.png'))),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.58),

          FadeInUpBig(
            child: NextPageButton(
              text: 'Get Started',
              onPressed: () => widget.pageController.animateToPage(1, duration: const Duration(seconds: 1), curve: Curves.easeInOut),
            ),
          ),
        ],
      ),
    );
  }
}