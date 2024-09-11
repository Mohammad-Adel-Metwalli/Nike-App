import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class NameAndEmailAndPasswordTextFormField extends StatefulWidget
{
  const NameAndEmailAndPasswordTextFormField({super.key, this.onChanged, required this.isEmailOrName,});
  final void Function(String)? onChanged;
  final bool isEmailOrName;

  @override
  State<NameAndEmailAndPasswordTextFormField> createState() => _NameAndEmailAndPasswordTextFormFieldState();
}

class _NameAndEmailAndPasswordTextFormFieldState extends State<NameAndEmailAndPasswordTextFormField>
{
  bool isObscured = true;

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      validator: (data)
      {
        if(data!.isEmpty)
        {
          return 'Please fill the data';
        }

        return null;
      },
      cursorColor: lightBlack,
      onChanged: widget.onChanged,
      obscureText: widget.isEmailOrName ? false : isObscured,
      style: GoogleFonts.poppins(color: lightGrey2, fontWeight: FontWeight.w500, fontSize: 14.sp),
      decoration: InputDecoration(
        border: Styles.styleOfTextFormField(),
        focusedBorder: Styles.styleOfTextFormField(),
        enabledBorder: Styles.styleOfTextFormField(),
        disabledBorder: Styles.styleOfTextFormField(),
        errorBorder: Styles.styleOfTextFormFieldError(),
        focusedErrorBorder: Styles.styleOfTextFormFieldError(),
        suffixIcon: widget.isEmailOrName ? const SizedBox.shrink() : IconButton(onPressed: () => setState(() => isObscured = !isObscured), icon: isObscured ? const Icon(Bootstrap.eye_slash, color: lightGrey1) : const Icon(Bootstrap.eye, color: lightGrey1)),
      ),
    );
  }
}