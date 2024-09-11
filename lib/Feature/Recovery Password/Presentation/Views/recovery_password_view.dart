import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_app/Core/Utils/constant_colors.dart';
import 'package:nike_app/Feature/Data/Repositories/Models/user_model.dart';

import 'Widgets/recovery_password_view_body.dart';

class RecoveryPasswordView extends StatelessWidget
{
  const RecoveryPasswordView({super.key, required this.userModel});
  final UserModel userModel;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: RecoveryPasswordViewBody(userModel: userModel),
      ),
    );
  }
}