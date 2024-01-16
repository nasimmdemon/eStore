import 'package:estore/utils/constants/lottie_animations.dart';
import 'package:estore/utils/device/device_utility.dart';
import 'package:estore/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardTabs extends StatelessWidget {
  final String lottie;
  final String title;
  final String subTitle;

  const OnboardTabs({
    super.key,
    required this.lottie,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Lottie.asset(lottie,
              height: EHelperFunctions.screenHeight() * 0.6,
              width: EHelperFunctions.screenWidth() * 0.8),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
