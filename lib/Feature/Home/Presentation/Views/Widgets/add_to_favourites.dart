import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class AddToFavourites extends StatefulWidget
{
  const AddToFavourites({super.key, required this.favouriteShoes, required this.index});
  final List<int> favouriteShoes;
  final int index;

  @override
  State<AddToFavourites> createState() => _AddToFavouritesState();
}

class _AddToFavouritesState extends State<AddToFavourites>
{
  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      left: 0,
      top: 0,
      child: IconButton(onPressed: () => setState(() => widget.favouriteShoes.add(widget.index)), icon: Icon(widget.favouriteShoes.contains(widget.index) ? CupertinoIcons.heart_solid : CupertinoIcons.heart, color: widget.favouriteShoes.contains(widget.index) ? red : lightBlack, size: 30.h)),
    );
  }
}
