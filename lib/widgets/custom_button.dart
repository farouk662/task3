import 'package:flutter/material.dart';

import '../core/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.onPressed, required this.isLast})
      : super(key: key);
  final void Function() onPressed;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
              colors: [AppColors.linearColor1, AppColors.linearColor2])),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(
          !isLast ? 'Find Out More' : 'Next',
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
