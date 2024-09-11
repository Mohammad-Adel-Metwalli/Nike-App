import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app/Feature/Home/Presentation/Views/Widgets/shoes_list_view_item_body.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class ShoesListViewItem extends StatelessWidget
{
  const ShoesListViewItem({super.key, required this.cartList, required this.favouriteShoes, required this.index,});
  final List<int> cartList;
  final List<int> favouriteShoes;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 250.h,
      width: 210.w,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(color: lightBlack, width: 3),
      ),

      child: ShoesListViewItemBody(cartList: cartList, favouriteShoes: favouriteShoes, index: index),
    );
  }
}