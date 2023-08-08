import 'dart:async';
import 'package:sultan_farm_mobile/Screens/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:sultan_farm_mobile/Theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    //
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/onboarding', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Container(
          height: 209,
          width: 209,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/logosultanfarm.png'))),
        ),
      ),
    );
  }
}
