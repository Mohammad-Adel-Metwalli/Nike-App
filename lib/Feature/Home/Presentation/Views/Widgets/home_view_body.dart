import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/Core/Utils/assets_data.dart';
import 'package:nike_app/Core/Utils/constant_colors.dart';
import 'package:nike_app/Feature/Home/Presentation/Views/Widgets/shoes_list_view.dart';
import 'categories_list_view.dart';
import 'custom_search_bar.dart';

class HomeViewBody extends StatefulWidget
{
  const HomeViewBody({super.key,});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
{
  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          const CustomSearchBar(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.024),

          Text('Select Category', style: TextStyle(color: lightBlack, fontWeight: FontWeight.bold, fontSize: 16.sp)),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

          const CategoriesListView(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Popular Shoes', style: TextStyle(color: lightBlack, fontWeight: FontWeight.bold, fontSize: 16.sp)),

              TextButton(
                onPressed: (){},
                style: ButtonStyle(overlayColor: WidgetStatePropertyAll<Color>(lightGrey1.withOpacity(0.3))),
                child: Text('See all', style: TextStyle(color: blue, fontWeight: FontWeight.bold, fontSize: 16.sp)),
              ),
            ],
          ),

          ShoesListView(cartList: AssetsData.cartList, favouriteShoes: AssetsData.favouriteShoes),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

          Text('New Arrivals', style: TextStyle(color: lightBlack, fontWeight: FontWeight.bold, fontSize: 16.sp)),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Summer Sale', style: TextStyle(color: lightBlack, fontWeight: FontWeight.w800, fontSize: 16.sp)),

                  Text('15% OFF', style: GoogleFonts.fugazOne(color: purple, fontWeight: FontWeight.bold, fontSize: 40.sp)),
                ],
              ),

              Image(image: AssetImage(AssetsData.allShoes[1]!.shoeImage), height: 120.h)
            ],
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
        ],
      ),
    );
  }
}