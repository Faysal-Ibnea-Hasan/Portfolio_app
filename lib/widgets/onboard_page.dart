import 'package:flutter/material.dart';
import 'package:learning_phase1/main.dart';
import 'package:learning_phase1/widgets/onboard_card.dart';
import 'package:learning_phase1/widgets/tab_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key,  this.onboarding = false});
  final bool onboarding;
  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  static final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _onBoardingCards = [
    OnBoardCard(
      image: 'lib/assets/images/Welcome.png',
      title: 'Welcome',
      description: 'Welcome to my portfolio!',
      buttonText: 'Next',
      onPressed: () {
        _pageController.animateToPage(
          1,
          duration: Durations.long1,
          curve: Curves.linear,
        );
      },
    ),
    OnBoardCard(
      image: 'lib/assets/images/hire.png',
      title: 'Hire me',
      description:
          'As I am open to work and excited to learing new aspects, you can hire me for your need.',
      buttonText: 'Next',
      onPressed: () {
        _pageController.animateToPage(
          2,
          duration: Durations.long1,
          curve: Curves.linear,
        );
      },
    ),
    OnBoardCard(
      image: 'lib/assets/images/Reach.png',
      title: 'Contact me',
      description:
          'If you have any queries related to my work feel free to reach me 24/7.',
      buttonText: 'Done',
      onPressed: () async {
        final pres = await SharedPreferences.getInstance();
        pres.setBool('onboarding', true);//set the onboarding state true it means onBoarding screens showed once

        navigatorKey.currentState?.pushReplacement(
          MaterialPageRoute(
            builder: (ctx) => const TabBarExample(),
          ), //when you need to use navigation outside the build context
        );
      },
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 50.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: _onBoardingCards,
                ),
              ),
              SmoothPageIndicator(
                controller: _pageController,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Color.fromARGB(255, 31, 112, 252),
                ),
                count: _onBoardingCards.length,
                onDotClicked: (index) {
                  _pageController.animateToPage(
                    index,
                    duration: Durations.long1,
                    curve: Curves.linear,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
