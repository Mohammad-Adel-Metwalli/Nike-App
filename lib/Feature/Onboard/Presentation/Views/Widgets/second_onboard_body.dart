import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'next_page_button.dart';
import 'nike_shoe.dart';

class SecondOnboardBody extends StatefulWidget
{
  const SecondOnboardBody({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<SecondOnboardBody> createState() => _SecondOnboardBodyState();
}

class _SecondOnboardBodyState extends State<SecondOnboardBody>
{
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.15),

          const NikeShoe(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

          FadeInRightBig(child: Text('Let\'s Start Journey\nWith Nike', style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 34.sp), textAlign: TextAlign.center)),

          FadeInRightBig(child: Text('Smart, Gorgeous & Fashionable\nCollection Explore Now', style: TextStyle(color: white, fontSize: 16.sp), textAlign: TextAlign.center)),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.172),

          FadeInUpBig(
            child: NextPageButton(
              text: 'Next',
              onPressed: () => widget.pageController.animateToPage(2, duration: const Duration(seconds: 1), curve: Curves.easeInOut),
            ),
          ),
        ],
      ),
    );
  }
}