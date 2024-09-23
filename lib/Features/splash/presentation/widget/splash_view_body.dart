import 'dart:async';

import 'package:bookly_app/Features/home/presentation/view_models/cubit/feature_books/feature_books_cubit.dart';
import 'package:bookly_app/Features/splash/presentation/widget/sliding_logo.dart';


import 'package:bookly_app/core/resources/constants_manger.dart';
import 'package:bookly_app/core/resources/route_manger.dart';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  
  late AnimationController animationController; 
  late Animation<Offset> slidingAnimation ;
  
  
Timer? _timer;
 _setTimer() {
    _timer = Timer(const Duration(seconds: constantManger.durationSplash ), _goNext);
   }

  _goNext() {
     context.go(RouteManger.homeview);
  }
  @override

  void initState() {
    super.initState();
    _setTimer();
    animationFunction();
    BlocProvider.of<FeatureBooksCubit>(context).fetchFutureBooks();

  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           SlidingLogo(slidingAnimation: slidingAnimation),
        ],
      )
    );
  }

    void animationFunction() {
    animationController = AnimationController(vsync: this , duration: const Duration(seconds: constantManger.durationAnimation) );
    slidingAnimation = Tween <Offset>(begin: const Offset(0, 2), end: const Offset(0, 0) ).animate(animationController);
    animationController.forward();
    
  }
}


