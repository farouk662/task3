import 'package:flutter/material.dart';
import 'package:task3/core/utils/assets.dart';
import 'package:task3/core/utils/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 56,
                ),
                const Text.rich(
                  TextSpan(text: 'Welcome! ', children: [
                    TextSpan(
                        text: 'Set ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28)),
                    TextSpan(
                        text: 'Wakey ',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor)),
                    TextSpan(
                        text: 'to achieve your morning goals ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28)),
                  ]),
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  // textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('Let’s make your morning more active and healthy. ',
                    style: TextStyle(
                      fontSize: 18,
                    )),
                // const SizedBox(
                //   height: 14,
                // ),
                CircleAvatar(
                  radius: MediaQuery.of(context).size.height * .2,
                  backgroundColor: Colors.transparent,
                  backgroundImage: const AssetImage(
                    AppAssets.welcome,
                  ),
                ),
                _buttonBuilder('I want to wake up on time'),
                const SizedBox(
                  height: 8,
                ),
                _buttonBuilder('I want to build a morning habit'),
                const SizedBox(
                  height: 8,
                ),
                _buttonBuilder('I want to start my day early'),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonBuilder(String label) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.gray, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 18),
            ),
            const Icon(
              Icons.arrow_forward_ios_sharp,
            )
          ],
        ),
      ),
    );
  }
}
