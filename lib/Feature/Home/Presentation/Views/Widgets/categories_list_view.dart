import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/assets_data.dart';
import 'categories_list_view_item.dart';

class CategoriesListView extends StatefulWidget
{
  const CategoriesListView({super.key,});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView>
{
  int chosenCategory = 0;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 50.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AssetsData.categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => setState(() => chosenCategory = index),
          child: Padding(
            padding: EdgeInsets.only(left: index == 0 ? 0 : 10.w, right: 10.w),
            child: CategoriesListViewItem(chosenCategory: chosenCategory, index: index),
          ),
        ),
      ),
    );
  }
}