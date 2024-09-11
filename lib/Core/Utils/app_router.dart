import 'package:go_router/go_router.dart';
import 'package:nike_app/Core/Utils/constants.dart';
import 'package:nike_app/Feature/Authentication/Presentation/Views/login_view.dart';
import 'package:nike_app/Feature/Authentication/Presentation/Views/register_view.dart';
import 'package:nike_app/Feature/Cart/Presentation/Views/Widgets/cart_view.dart';
import 'package:nike_app/Feature/Data/Repositories/Models/user_model.dart';
import 'package:nike_app/Feature/Favourites/Presentation/Views/favourites_view.dart';
import 'package:nike_app/Feature/Home/Presentation/Views/home_view.dart';
import 'package:nike_app/Feature/Onboard/Presentation/Views/onboard_view.dart';
import 'package:nike_app/Feature/Presentation/Views/splash_view.dart';
import 'package:nike_app/Feature/Recovery%20Password/Presentation/Views/recovery_password_view.dart';

abstract class AppRouter
{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashViewPath,
        builder: (context, state) => const SplashView(),
      ),

      GoRoute(
        path: onboardViewPath,
        builder: (context, state) => const OnboardView(),
      ),

      GoRoute(
        path: loginViewPath,
        builder: (context, state) => const LoginView(),
      ),

      GoRoute(
        path: registerViewPath,
        builder: (context, state) => const RegisterView(),
      ),

      GoRoute(
        path: homeViewPath,
        builder: (context, state) => HomeView(userModel: state.extra as UserModel),
      ),

      GoRoute(
        path: recoveryPasswordViewPath,
        builder: (context, state) => RecoveryPasswordView(userModel: state.extra as UserModel),
      ),

      GoRoute(
        path: favouritesViewPath,
        builder: (context, state) => FavouritesView(favourites: state.extra as List<int>),
      ),

      GoRoute(
        path: cartViewPath,
        builder: (context, state) => CartView(cartProducts: state.extra as List<int>),
      ),
    ],
  );
}