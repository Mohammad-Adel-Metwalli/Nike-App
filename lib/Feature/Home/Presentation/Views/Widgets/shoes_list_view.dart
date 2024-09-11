import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app/Feature/Home/Presentation/Views/Widgets/shoes_list_view_item.dart';
import '../../../../../Core/Utils/assets_data.dart';

class ShoesListView extends StatelessWidget
{
  const ShoesListView({super.key, required this.cartList, required this.favouriteShoes,});
  final List<int> cartList;
  final List<int> favouriteShoes;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 250.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AssetsData.allShoes.keys.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(left: index == 0 ? 0 : 10.w, right: index == AssetsData.allShoes.keys.length - 1 ? 0 : 10.w),
          child: ShoesListViewItem(cartList: cartList, favouriteShoes: favouriteShoes, index: index),
        ),
      ),
    );
  }
}