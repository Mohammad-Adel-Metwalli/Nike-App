import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'cart_button.dart';
import 'custom_home_app_bar_title.dart';

AppBar customHomeAppBar() => AppBar(
  centerTitle: true,
  backgroundColor: white,
  title: FadeInDownBig(child: const CustomHomeAppBarTitle()),
  leading: FadeInDownBig(child: IconButton(onPressed: (){}, icon: Image(image: const AssetImage('Assets/Images/Staggered bar.png'), height: 20.h))),
  actions: [
    FadeInDownBig(child: const CartButton()),
  ],
);