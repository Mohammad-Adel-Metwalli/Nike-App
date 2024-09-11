import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/Core/Utils/constants.dart';
import 'package:nike_app/Core/Widgets/submitting_button.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../Authentication/Presentation/Views/Widgets/name_and_email_and_password_text_form_field.dart';
import '../../../../Authentication/Presentation/Views/Widgets/text_form_field_title.dart';
import '../../../../Data/Repositories/Models/user_model.dart';

class RecoveryPasswordViewBody extends StatefulWidget
{
  const RecoveryPasswordViewBody({super.key, required this.userModel,});
  final UserModel userModel;

  @override
  State<RecoveryPasswordViewBody> createState() => _RecoveryPasswordViewBodyState();
}

class _RecoveryPasswordViewBodyState extends State<RecoveryPasswordViewBody>
{
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context)
  {
    return FadeInUpBig(
      child: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.08),

              IconButton(onPressed: () => GoRouter.of(context).replace(loginViewPath), icon: Icon(Icons.chevron_left_rounded, color: lightBlack, size: 40.h)),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

              Center(child: Text('Forgot Password', style: TextStyle(color: lightBlack, fontWeight: FontWeight.bold, fontSize: 32.sp))),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

              Center(child: Text('Enter Your Email Account To Reset\nYour Password', style: GoogleFonts.poppins(color: lightGrey1, fontSize: 16.sp), textAlign: TextAlign.center)),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

              const TextFormFieldTitle(title: 'Email Address'),

              NameAndEmailAndPasswordTextFormField(isEmailOrName: true, onChanged: (data) => setState(() => widget.userModel.email = data)),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

              SubmittingButton(
                text: 'Reset Password',
                onPressed: ()
                {
                  if(formKey.currentState!.validate())
                  {
                    GoRouter.of(context).replace(loginViewPath);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}