import 'package:flutter/material.dart';
import 'package:nike_app/Core/Utils/constant_colors.dart';
import 'Widgets/onboard_view_body.dart';

class OnboardView extends StatefulWidget
{
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView>
{
  @override
  void didChangeDependencies()
  {
    precacheImage(const AssetImage('Assets/Images/Nike shoes with pants.png'), context);
    precacheImage(const AssetImage('Assets/Images/Nike-logo-transparent.png'), context);
    precacheImage(const AssetImage('Assets/Images/Graphic-board1.4.png'), context);
    precacheImage(const AssetImage('Assets/Images/Graphic-board1.1.png'), context);
    precacheImage(const AssetImage('Assets/Images/Graphic-board1.2.png'), context);
    precacheImage(const AssetImage('Assets/Images/Graphic-board1.3.png'), context);
    precacheImage(const AssetImage('Assets/Images/Aire Jordan Nike.png'), context);
    precacheImage(const AssetImage('Assets/Images/Background of aire jordan.png'), context);
    precacheImage(const AssetImage('Assets/Images/Graphic-board3.png'), context);
    precacheImage(const AssetImage('Assets/Images/Shadow of nike shoes.png'), context);
    precacheImage(const AssetImage('Assets/Images/Shadow of aire jordan shoe.png'), context);
    precacheImage(const AssetImage('Assets/Images/Nike shoes.png'), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      backgroundColor: lightBlue,
      body: OnboardViewBody(),
    );
  }
}