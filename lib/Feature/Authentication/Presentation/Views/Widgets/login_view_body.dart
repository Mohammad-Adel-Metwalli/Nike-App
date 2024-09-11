import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/Core/Utils/constants.dart';
import 'package:nike_app/Core/Widgets/submitting_button.dart';
import 'package:nike_app/Feature/Authentication/Presentation/Views/Widgets/recovery_password_button.dart';
import 'package:nike_app/Feature/Authentication/Presentation/Views/Widgets/text_form_field_title.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Widgets/sign_in_or_sign_up_with_google_button.dart';
import '../../../../Data/Repositories/Models/user_model.dart';
import 'create_or_have_account_button.dart';
import 'name_and_email_and_password_text_form_field.dart';

class LoginViewBody extends StatefulWidget
{
  const LoginViewBody({super.key,});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody>
{
  UserModel userModel = UserModel(name: '', email: '', password: '');
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: FadeInUpBig(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

                IconButton(onPressed: () => GoRouter.of(context).replace(onboardViewPath), icon: Icon(Icons.chevron_left_rounded, color: lightBlack, size: 40.h)),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

                Center(child: Text('Hello Again!', style: TextStyle(color: lightBlack, fontWeight: FontWeight.bold, fontSize: 32.sp))),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

                Center(child: Text('Fill Your Details Or Continue With\nSocial Media', style: GoogleFonts.poppins(color: lightGrey1, fontSize: 16.sp), textAlign: TextAlign.center)),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

                const TextFormFieldTitle(title: 'Email Address'),

                NameAndEmailAndPasswordTextFormField(isEmailOrName: true, onChanged: (data) => setState(() => userModel.email = data)),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

                const TextFormFieldTitle(title: 'Password'),

                NameAndEmailAndPasswordTextFormField(isEmailOrName: false, onChanged: (data) => setState(() => userModel.password = data)),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.012),

                RecoveryPasswordButton(onPressed: () => GoRouter.of(context).replace(recoveryPasswordViewPath, extra: userModel)),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.024),

                SubmittingButton(
                  text: 'Sign In',
                  onPressed: ()
                  {
                    if(formKey.currentState!.validate())
                    {
                      userModel.name = 'Mohammad Adel Metwalli';
                      GoRouter.of(context).replace(homeViewPath, extra: userModel);
                    }
                  },
                ),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.024),

                SignInOrSignUpWithGoogleButton(
                  text: 'Sign In With Google',
                  onPressed: ()
                  {
                    userModel.name = 'Mohammad Adel Metwalli';
                    userModel.email = 'elardosleyadel@gmail.com';
                    userModel.password = '123456789';
                    GoRouter.of(context).replace(homeViewPath, extra: userModel);
                  },
                ),

                SizedBox(height: MediaQuery.sizeOf(context).height * 0.135),

                CreateOrHaveAccountButton(onPressed: () => GoRouter.of(context).replace(registerViewPath), firstText: 'New User? ', secondText: 'Create Account'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}