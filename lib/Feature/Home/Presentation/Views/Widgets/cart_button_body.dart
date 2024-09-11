import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CartButtonBody extends StatelessWidget
{
  const CartButtonBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(MingCute.shopping_bag_3_line, color: lightBlack, size: 30.h),

        Positioned(
          bottom: 30.h,
          right: 25.w,
          child: CircleAvatar(backgroundColor: red, radius: 4.h),
        ),
      ],
    );
  }
}