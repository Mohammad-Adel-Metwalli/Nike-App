import 'package:flutter/material.dart';
import 'package:nike_app/Core/Utils/constant_colors.dart';
import 'Widgets/splash_view_body.dart';

class SplashView extends StatefulWidget
{
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
{
  @override
  void didChangeDependencies()
  {
    precacheImage(const AssetImage('Assets/Images/Nike-logo.png'), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      backgroundColor: blue,
      body: SplashViewBody(),
    );
  }
}