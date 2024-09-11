import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/assets_data.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CategoriesListViewItem extends StatelessWidget
{
  const CategoriesListViewItem({super.key, required this.index, required this.chosenCategory,});
  final int chosenCategory, index;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 50.h,
      width: 150.w,
      decoration: BoxDecoration(
        color: chosenCategory == index ? blue : white,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Center(child: Text(AssetsData.categories[index], style: TextStyle(color: chosenCategory == index ? white : lightBlack, fontWeight: FontWeight.w800, fontSize: 12.sp))),
    );
  }
}