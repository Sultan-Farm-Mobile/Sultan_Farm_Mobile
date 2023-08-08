import 'package:sultan_farm_mobile/Theme.dart';
import 'package:sultan_farm_mobile/Screens/sign_in_page.dart';
import 'package:sultan_farm_mobile/Screens/sign_up_page.dart';
import 'package:sultan_farm_mobile/Widgets/buttons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Grow Your Financial Today',
    'Build From Zero to Freedom',
    'Start Together'
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\you wanted it too'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 6,
          ),
          CarouselSlider(
            items: [
              Image.asset(
                'assets/onboarding1.png',
                height: 500,
                width: 410,
              ),
              Image.asset(
                'assets/onboarding2.png',
                height: 500,
                width: 410,
              ),
              Image.asset(
                'assets/onboarding3.png',
                height: 500,
                width: 410,
              ),
            ],
            options: CarouselOptions(
              height: 500,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              onPageChanged: ((index, reason) => {
                    setState(() {
                      currentIndex = index;
                    })
                  }),
            ),
            carouselController: carouselController,
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            // padding: EdgeInsets.symmetric(horizontal: 5,),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titles[currentIndex],
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  subtitles[currentIndex],
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: currentIndex == 2 ? 40 : 150,
                ),
                currentIndex == 2
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          CustomFilledButton(
                            title: 'Get Started',
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/sign-up', (route) => false);
                            },
                          ),
                         const SizedBox(
                            height: 85,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 15,
                                height: 12,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == 0
                                      ? bluetogreenColor
                                      : lightBackgroundColor,
                                ),
                              ),
                              Container(
                                width: 15,
                                height: 12,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == 1
                                      ? bluetogreenColor
                                      : lightBackgroundColor,
                                ),
                              ),
                              Container(
                                width: 15,
                                height: 12,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == 2
                                      ? bluetogreenColor
                                      : lightBackgroundColor,
                                ),
                              ),
                            ],
                          ),
                          ],
                      )
                    : Row(
                        children: [
                          CustomTextButton(
                            width: 80,
                            title: 'Skip',
                            onPressed: () {
                              setState(() {
                                currentIndex = 2;
                              });
                              carouselController.jumpToPage(2);
                            },
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Container(
                            width: 15,
                            height: 12,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == 0
                                  ? bluetogreenColor
                                  : lightBackgroundColor,
                            ),
                          ),
                          Container(
                            width: 15,
                            height: 12,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == 1
                                  ? bluetogreenColor
                                  : lightBackgroundColor,
                            ),
                          ),
                          Container(
                            width: 15,
                            height: 12,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == 2
                                  ? bluetogreenColor
                                  : lightBackgroundColor,
                            ),
                          ),
                          const Spacer(),
                          CustomFilledButton(
                            width: 80,
                            title: 'Next',
                            onPressed: () {
                              carouselController.nextPage();
                            },
                          ),
                         ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
