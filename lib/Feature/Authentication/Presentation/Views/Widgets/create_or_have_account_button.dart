import 'package:flutter/material.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'create_or_have_account_button_body.dart';

class CreateOrHaveAccountButton extends StatelessWidget
{
  const CreateOrHaveAccountButton({super.key, this.onPressed, required this.firstText, required this.secondText,});
  final String firstText, secondText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: TextButton(
        style: ButtonStyle(overlayColor: WidgetStatePropertyAll<Color>(lightGrey1.withOpacity(0.2))),
        onPressed: onPressed,
        child: CreateOrHaveAccountButtonBody(firstText: firstText, secondText: secondText),
      ),
    );
  }
}