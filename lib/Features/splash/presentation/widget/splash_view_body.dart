import 'dart:async';

import 'package:bookly_app/Features/splash/presentation/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/widget/sliding_logo.dart';


import 'package:bookly_app/core/resources/constants_manger.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


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
   Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeView()),);
  }
  @override
  void initState() {
    super.initState();
    _setTimer();
    super.initState();
    animationController = AnimationController(vsync: this , duration: const Duration(seconds: constantManger.durationAnimation) );
    slidingAnimation = Tween <Offset>(begin: const Offset(0, 2), end: const Offset(0, 0) ).animate(animationController);
    animationController.forward();
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
}


