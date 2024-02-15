import 'package:estore/utils/constants/lottie_animations.dart';
import 'package:estore/utils/constants/sizes.dart';
import 'package:estore/utils/constants/text_strings.dart';
import 'package:estore/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EsuccessScreen extends StatelessWidget {
  const EsuccessScreen(
      {super.key,
      required this.successHeadline,
      required this.successMessage,
      required this.btnTitle,
      required this.onTap});

  final String successHeadline;
  final String successMessage;
  final String btnTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(ESizes.defaultSpace),
      child: Column(
        children: [
          const SizedBox(height: ESizes.appBarHeight),
          Lottie.asset(ELottieAnimations.success,
              width: EHelperFunctions.screenWidth() * 0.7),
          const SizedBox(height: ESizes.spaceBtwItems),
          Text(
            ETexts.yourAccountCreatedTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: ESizes.spaceBtwItems),
          Text(
            ETexts.yourAccountCreatedSubTitle,
            style: Theme.of(context).textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: ESizes.spaceBtwItems),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(ETexts.tContinue)))
        ],
      ),
    ));
  }
}
