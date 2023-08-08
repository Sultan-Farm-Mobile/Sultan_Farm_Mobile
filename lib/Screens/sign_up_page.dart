import 'package:sultan_farm_mobile/Theme.dart';
import 'package:sultan_farm_mobile/Screens/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:sultan_farm_mobile/Widgets/buttons.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
            Text('Ini adalah tampilan Sign Up', style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold
            ),),
            const SizedBox(
              height: 20,
            ),
            CustomFilledButton(
              title: 'Already have account?',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/sign-in', (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
