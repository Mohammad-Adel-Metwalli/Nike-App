import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class RecoveryPasswordButton extends StatelessWidget
{
  const RecoveryPasswordButton({super.key, this.onPressed,});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.only(left: 230.w),
    child: TextButton(
      onPressed: onPressed,
      style: ButtonStyle(overlayColor: WidgetStatePropertyAll<Color>(lightGrey1.withOpacity(0.2))),
      child: Text('Recovery Password', style: GoogleFonts.poppins(color: lightGrey1, fontWeight: FontWeight.w400, fontSize: 12.sp)),
    ),
  );
}