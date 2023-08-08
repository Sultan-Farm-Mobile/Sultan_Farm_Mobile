import 'package:flutter/material.dart';
import 'package:sultan_farm_mobile/Screens/Dashboard.dart';
import 'package:sultan_farm_mobile/theme.dart';
import 'package:sultan_farm_mobile/Screens/onboarding_page.dart';
import 'package:sultan_farm_mobile/Screens/sign_in_page.dart';
import 'package:sultan_farm_mobile/Screens/sign_up_page.dart';
import 'package:sultan_farm_mobile/Screens/splash_page.dart';

import 'Theme.dart';
// import '';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: lightBackgroundColor,
            elevation: 0,
            centerTitle: true,
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          )),
      // home: SplashPage(),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
      },
    );
  }
}
