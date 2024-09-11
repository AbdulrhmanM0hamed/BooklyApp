import 'package:bookly_app/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/home/presentation/widgets/book_detials_view.dart';
import 'package:bookly_app/Features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class RouteManger {
  static const String splashRoute = '/' ;
  static const String homeview = '/home' ;
  static const String detials = '/detials' ;

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashRoute,
        builder: (context, state) => const SplashView(),
      ),
     
      GoRoute(
        path: homeview,
        builder: (context, state) => const HomeView(),
      ),
       GoRoute(
        path: detials ,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}