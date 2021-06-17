import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    
    checkSession();
  }

  // 检查登录状态
  void checkSession() async {
    // 模拟请求过程
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context).pushReplacementNamed('/sign-in');
  }

  @override
  Widget build(BuildContext context) {
    return LoadingIndicator(
      indicatorType: Indicator.ballPulse,
    );
  }
}
