import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Utils/assets_data.dart';
import '../Utils/constant_colors.dart';

class FavouritesOrCartProductsItem extends StatelessWidget
{
  const FavouritesOrCartProductsItem({super.key, required this.index,});
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage(AssetsData.allShoes[index]!.shoeImage), height: 100.h),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.1),

        SizedBox(
          height: 100.h,
          width: 150.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AssetsData.allShoes[index]!.shoeName, style: TextStyle(color: lightGrey1, fontWeight: FontWeight.bold, fontSize: 20.sp)),

              Text('\$ ${AssetsData.allShoes[index]!.shoePrice}', style: GoogleFonts.poppins(color: green, fontWeight: FontWeight.bold, fontSize: 17.sp), maxLines: 1, overflow: TextOverflow.ellipsis),
            ],
          ),
        ),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.1),
      ],
    );
  }
}