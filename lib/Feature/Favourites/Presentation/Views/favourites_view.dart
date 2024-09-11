import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/Core/Utils/constants.dart';
import 'package:nike_app/Feature/Data/Repositories/Models/user_model.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Widgets/favourites_or_cart_products.dart';

class FavouritesView extends StatelessWidget
{
  const FavouritesView({super.key, required this.favourites});
  final List<int> favourites;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: white,
        title: Text('Favourites', style: TextStyle(color: blue, fontWeight: FontWeight.bold, fontSize: 20.sp)),
        leading: IconButton(onPressed: () => GoRouter.of(context).replace(homeViewPath, extra: UserModel(name: 'Mohammad', email: 'elardosleyadel@gmail.com', password: '123456789')), icon: Icon(Icons.chevron_left_rounded, color: blue, size: 30.h)),
      ),
      body: FavouritesOrCartProducts(favouritesOrCartProducts: favourites),
    );
  }
}