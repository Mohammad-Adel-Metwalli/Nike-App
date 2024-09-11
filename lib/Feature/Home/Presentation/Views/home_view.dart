import 'package:animate_do/animate_do.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:nike_app/Core/Utils/assets_data.dart';
import 'package:nike_app/Core/Utils/constant_colors.dart';
import 'package:nike_app/Core/Utils/constants.dart';
import 'package:nike_app/Feature/Data/Repositories/Models/user_model.dart';
import 'Widgets/custom_home_app_bar.dart';
import 'Widgets/home_view_body.dart';

class HomeView extends StatefulWidget
{
  const HomeView({super.key, required this.userModel});
  final UserModel userModel;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
{
  @override
  void didChangeDependencies()
  {
    precacheImage(const AssetImage('Assets/Images/Hero Image.png'), context);
    precacheImage(const AssetImage('Assets/Images/nike-ah8050110-air_max_270-1-e_prev_ui 2.png'), context);
    precacheImage(const AssetImage('Assets/Images/Nike-Shoe.png'), context);
    precacheImage(const AssetImage('Assets/Images/Nike-Zoom-Moc-The-10th_1_.png'), context);
    precacheImage(const AssetImage('Assets/Images/nike-zoom-winflo-3-831561-001-mens-running-shoes-11550187236tiyyje6l87_prev_ui 3.png'), context);
    precacheImage(const AssetImage('Assets/Images/pngaaa.png'), context);
    precacheImage(const AssetImage('Assets/Images/PngItem_5550642 (2) 1.png'), context);
    precacheImage(const AssetImage('Assets/Images/Graphic Home View.png'), context);
    precacheImage(const AssetImage('Assets/Images/Staggered bar.png'), context);
    precacheImage(const AssetImage('Assets/Images/Search icon.png'), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: white,
      appBar: customHomeAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: FadeInUpBig(child: const HomeViewBody()),
      ),
      bottomNavigationBar: customHomeNavigationBar(),
    );
  }

  CurvedNavigationBar customHomeNavigationBar()
  {
    int chosenIndex = 2;

    return CurvedNavigationBar(
      backgroundColor: blue,
      buttonBackgroundColor: white,
      onTap: (index) => setState(()
      {
        chosenIndex = index;
        if(chosenIndex == 1)
        {
          GoRouter.of(context).replace(favouritesViewPath, extra: AssetsData.favouriteShoes);
        }
      }),
      index: chosenIndex,
      items: const [
        Icon(Iconsax.home_2_outline, color: blue),
        Icon(CupertinoIcons.heart, color: blue),
        Icon(CupertinoIcons.home, color: blue),
        Icon(MingCute.shopping_bag_3_line, color: blue),
        Icon(CupertinoIcons.person_crop_circle, color: blue),
      ],
    );
  }
}