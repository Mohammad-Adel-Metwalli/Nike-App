import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/styles.dart';

class CustomSearchBar extends StatelessWidget
{
  const CustomSearchBar({super.key,});

  @override
  Widget build(BuildContext context) => TextFormField(
    style: Styles.styleOfSearchBarFont,
    decoration: InputDecoration(
      label: Text('Looking for shoes', style: Styles.styleOfSearchBarFont),
      prefixIcon: Image(image: const AssetImage('Assets/Images/Search icon.png'), height: 30.h),
      border: Styles.styleOfTextFormField(),
      enabledBorder: Styles.styleOfTextFormField(),
      focusedBorder: Styles.styleOfTextFormField(),
      disabledBorder: Styles.styleOfTextFormField(),
    ),
  );
}