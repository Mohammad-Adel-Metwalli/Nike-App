import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../Core/Utils/assets_data.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'add_to_cart.dart';
import 'add_to_favourites.dart';

class ShoesListViewItemBody extends StatelessWidget
{
  const ShoesListViewItemBody({super.key, required this.cartList, required this.favouriteShoes, required this.index,});
  final List<int> cartList;
  final List<int> favouriteShoes;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            index != 1 ? Image(image: AssetImage(AssetsData.allShoes[index]!.shoeImage), height: 130.h) : Center(child: Image(image: AssetImage(AssetsData.allShoes[index]!.shoeImage), height: 130.h)),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

            Text('BEST SELLER', style: TextStyle(color: blue, fontWeight: FontWeight.w600, fontSize: 13.sp)),

            Text(AssetsData.allShoes[index]!.shoeName, style: TextStyle(color: lightGrey1, fontWeight: FontWeight.w600, fontSize: 16.sp)),

            Text('\$ ${AssetsData.allShoes[index]!.shoePrice}', style: GoogleFonts.poppins(color: lightBlack, fontWeight: FontWeight.bold, fontSize: 16.sp)),
          ],
        ),

        AddToCart(cartList: cartList, index: index),

        AddToFavourites(favouriteShoes: favouriteShoes, index: index),
      ],
    );
  }
}