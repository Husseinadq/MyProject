import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test01/presentation/resources/assets_manager.dart';
import 'package:test01/presentation/resources/color_manager.dart';
import 'package:test01/presentation/resources/constants_manager.dart';
import 'package:test01/presentation/resources/routes_manager.dart';
class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay(){
    _timer=Timer(Duration(seconds: AppConstants.splashDeley), _goNext);
  }

  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.onBoarding);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(child: Image(image: AssetImage(ImageAssets.splashLogo),)),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }
}
