import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app/Core/Utils/assets_data.dart';
import 'favourites_or_cart_products_item.dart';

class FavouritesOrCartProducts extends StatelessWidget
{
  const FavouritesOrCartProducts({super.key, required this.favouritesOrCartProducts,});
  final List<int> favouritesOrCartProducts;

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
      itemCount: AssetsData.allShoes.length,
      itemBuilder: (context, index) => favouritesOrCartProducts.contains(index) ? Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: FavouritesOrCartProductsItem(index: index),
      ) : const SizedBox.shrink(),
    );
  }
}