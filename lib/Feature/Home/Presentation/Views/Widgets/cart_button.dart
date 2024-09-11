import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/Core/Utils/assets_data.dart';
import 'package:nike_app/Core/Utils/constants.dart';
import 'cart_button_body.dart';

class CartButton extends StatelessWidget
{
  const CartButton({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return IconButton(
      onPressed: () => GoRouter.of(context).push(cartViewPath, extra: AssetsData.cartList),
      icon: const CartButtonBody(),
    );
  }
}