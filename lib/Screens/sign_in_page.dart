import 'package:sultan_farm_mobile/Theme.dart';
import 'package:sultan_farm_mobile/Screens/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:sultan_farm_mobile/Widgets/buttons.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // @override
  // void initState() {
  //   //
  //   super.initState();
  //   Timer(const Duration(seconds: 2), () {
  //     Navigator.pushNamedAndRemoveUntil(
  //         context, '/onboarding', (route) => false);
  //     // Navigator.push(
  //     //   context,
  //     //   MaterialPageRoute(
  //     //     builder: (context) => const OnBoardingPage(),
  //     //   ),
  //     // );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ini adalah tampilan Sign In',
              style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomFilledButton(
              title: 'Do not have account?',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/sign-up', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
