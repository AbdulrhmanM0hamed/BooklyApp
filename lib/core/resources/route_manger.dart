import 'package:bookly_app/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class RouteManger {
  static const String splashRoute = '/' ;
  static const String homeview = '/home' ;
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashRoute,
        builder: (context, state) => const SplashView(),
      ),
     
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}