import 'package:estore/common/eSuccessScreen.dart';
import 'package:estore/utils/constants/lottie_animations.dart';
import 'package:estore/utils/constants/sizes.dart';
import 'package:estore/utils/constants/text_strings.dart';
import 'package:estore/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          children: [
            const SizedBox(height: ESizes.appBarHeight),
            Lottie.asset(ELottieAnimations.verifyEmail,
                width: EHelperFunctions.screenWidth() * 0.9),
            const SizedBox(height: ESizes.spaceBtwSections),
            Text(
              ETexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: ESizes.spaceBtwItems),
            Text(
              "me@emonadi.com",
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: ESizes.spaceBtwItems),
            Text(
              ETexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: ESizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => EsuccessScreen(
                          btnTitle: ETexts.tContinue,
                          onTap: () {},
                          successHeadline: "Hello",
                          successMessage: "hi",
                        ));
                  },
                  child: const Text(ETexts.tContinue)),
            ),
            const SizedBox(height: ESizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    ETexts.resendEmail,
                    style: Theme.of(context).textTheme.labelLarge,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
