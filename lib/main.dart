import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/Core/Utils/app_router.dart';

void main() => runApp(const NikeApp());

class NikeApp extends StatelessWidget
{
  const NikeApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      designSize: Size(MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),

      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.ralewayTextTheme()),
      ),
    );
  }
}