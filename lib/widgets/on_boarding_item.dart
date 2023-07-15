import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:task3/models/onboarding_model.dart';
import 'package:task3/screens/welcome.dart';

import '../core/utils/colors.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({Key? key, required this.model, required this.isLast})
      : super(key: key);
  final OnBoardingModel model;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .5,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(model.image), fit: BoxFit.fill),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: const Duration(milliseconds: 500),
                          child: const WelcomeScreen(),
                          type: PageTransitionType.rightToLeft));
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text.rich(
            TextSpan(
              children: [
                if(isLast)
                const TextSpan(
                    text: 'start a ',
                    style: TextStyle(
                      fontSize: 18,
                    )),
                TextSpan(
                  text: model.coloredWord,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    foreground: Paint()
                      ..shader = const LinearGradient(
                        colors: [
                          // add more colors here if needed
                          AppColors.linearColor1,
                          AppColors.linearColor2,
                        ],
                      ).createShader(
                          const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)),
                  ),
                ),
                TextSpan(
                  text: model.title,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(model.subTitle),
        ),
      ],
    );
  }
}
