import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task3/core/utils/colors.dart';
import 'package:task3/models/onboarding_model.dart';
import 'package:task3/screens/welcome.dart';
import 'package:task3/widgets/custom_button.dart';

import '../widgets/on_boarding_item.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController controller = PageController();
  bool isLast = false;

  void _navigateToWelcomeScreen() => Navigator.push(
      context,
      PageTransition(
          duration: const Duration(milliseconds: 500),
          child: const WelcomeScreen(),
          type: PageTransitionType.rightToLeft));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .7,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: controller,
                onPageChanged: (index) {
                  if (index == onBoarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) => OnBoardingItem(
                  model: onBoarding[index],
                  isLast: isLast,
                ),
                itemCount: onBoarding.length,
              ),
            ),
            const SizedBox(
              height: 56,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const SlideEffect(dotWidth: 8, dotHeight: 8),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomButton(
                onPressed: () {
                  if (isLast) {
                    _navigateToWelcomeScreen();
                  } else {
                    controller.nextPage(
                        duration: const Duration(
                          milliseconds: 800,
                        ),
                        curve: Curves.fastLinearToSlowEaseIn);
                  }
                },
                isLast: isLast)
          ],
        ),
      ),
    );
  }
}
