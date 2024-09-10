
import 'package:bookly_app/Features/home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/view/splash_view.dart';
import 'package:bookly_app/core/resources/route_manger.dart';
import 'package:bookly_app/core/resources/theme_manger.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: RouteManger.router,
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme() , 
    );
  }
}


