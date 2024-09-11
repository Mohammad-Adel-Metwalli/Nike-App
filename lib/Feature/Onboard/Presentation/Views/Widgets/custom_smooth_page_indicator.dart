import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CustomSmoothPageIndicator extends StatelessWidget
{
  const CustomSmoothPageIndicator({super.key, required this.currentPage,});
  final int currentPage;

  @override
  Widget build(BuildContext context) => Positioned(
    left: 140.w,
    bottom: 150.h,
    child: ZoomIn(
      child: AnimatedSmoothIndicator(
        count: 3,
        activeIndex: currentPage,
        effect: ExpandingDotsEffect(
          dotHeight: 8.h,
          dotWidth: 20.w,
          dotColor: amber,
          activeDotColor: white,
        ),
      ),
    ),
  );
}