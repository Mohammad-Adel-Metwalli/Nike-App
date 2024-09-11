import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/Core/Utils/constants.dart';
import 'package:nike_app/Core/Utils/styles.dart';
import 'nike_logo.dart';

class SplashViewBody extends StatelessWidget
{
  const SplashViewBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInLeftBig(onFinish: (finish) => Future.delayed(const Duration(seconds: 1), () => GoRouter.of(context).replace(onboardViewPath)), child: const NikeLogo()),

          FadeInRightBig(child: Text('NIKE', style: Styles.fontStyleWhite65)),
        ],
      ),
    );
  }
}