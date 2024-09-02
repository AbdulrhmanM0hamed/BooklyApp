import 'dart:async';

import 'package:bookly_app/Features/splash/presentation/home_view.dart';
import 'package:bookly_app/core/resources/assets_manger.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  
Timer? _timer;
  _setTimer() {
    _timer = Timer(const Duration(seconds: 2), _goNext);
  }

  _goNext() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()),);
  }
 
  @override

  void initState() {
    super.initState();
    _setTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
            Image.asset(ImageAssets.splashLogo),
         
        ],
      )
    );
  }
}