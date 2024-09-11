import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/Core/Utils/constants.dart';
import 'aire_jordan_shoe.dart';
import 'next_page_button.dart';

class ThirdOnboardBody extends StatelessWidget
{
  const ThirdOnboardBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

          const AireJordanShoe(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.26),

          FadeInUpBig(
            child: NextPageButton(
              text: 'Next',
              onPressed: () => GoRouter.of(context).replace(loginViewPath),
            ),
          ),
        ],
      ),
    );
  }
}