import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class AddToCart extends StatefulWidget
{
  const AddToCart({super.key, required this.cartList, required this.index});
  final List<int> cartList;
  final int index;

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart>
{
  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      right: 0,
      bottom: 0,
      child: MaterialButton(
        color: widget.cartList.contains(widget.index) ? green : blue,
        onPressed: () => setState(() => widget.cartList.add(widget.index)),
        height: 40.h,
        minWidth: 30.w,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(19), bottomRight: Radius.circular(19))),
        child: Icon(widget.cartList.contains(widget.index) ? CupertinoIcons.checkmark_alt : CupertinoIcons.plus, color: white, size: 30.h),
      ),
    );
  }
}
