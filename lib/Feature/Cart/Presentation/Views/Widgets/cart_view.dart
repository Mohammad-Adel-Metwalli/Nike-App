import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/Core/Utils/constant_colors.dart';
import '../../../../../Core/Widgets/favourites_or_cart_products.dart';

class CartView extends StatelessWidget
{
  const CartView({super.key, required this.cartProducts});
  final List<int> cartProducts;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: white,
        title: Text('Cart Products', style: TextStyle(color: blue, fontWeight: FontWeight.bold, fontSize: 20.sp)),
        leading: IconButton(onPressed: () => GoRouter.of(context).pop(), icon: Icon(Icons.chevron_left_rounded, color: blue, size: 30.h)),
      ),
      body: FavouritesOrCartProducts(favouritesOrCartProducts: cartProducts),
    );
  }
}