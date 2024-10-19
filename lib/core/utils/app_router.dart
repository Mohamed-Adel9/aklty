
import 'package:aklty/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:aklty/features/splash/presentation/views/spalsh_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {

  static const kOnBoardingView = '/onBoardingView' ;

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),

    ],
  );
}