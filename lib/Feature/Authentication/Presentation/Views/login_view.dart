import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app/Core/Utils/constant_colors.dart';

import 'Widgets/login_view_body.dart';

class LoginView extends StatelessWidget
{
  const LoginView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: const LoginViewBody(),
      ),
    );
  }
}