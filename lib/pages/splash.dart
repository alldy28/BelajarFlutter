import 'dart:async';

import 'package:flutter/material.dart';

import '../theme.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor3,
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 252,
            height: 86,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/logo.png',
              ),
            )),
          ),
        ],
      )),
    );
  }
}
