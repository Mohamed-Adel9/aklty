
import 'package:aklty/features/authentication/presentation/views/login_mail_view.dart';
import 'package:aklty/features/splash/presentation/views/spalsh_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {

  static const kLoginMailView = '/loginMailView' ;

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLoginMailView,
        builder: (context, state) => const LoginMailView(),
      ),

    ],
  );
}