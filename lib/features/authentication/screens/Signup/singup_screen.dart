import 'package:estore/utils/constants/image_strings.dart';
import 'package:estore/utils/constants/lottie_animations.dart';
import 'package:estore/utils/constants/sizes.dart';
import 'package:estore/utils/constants/text_strings.dart';
import 'package:estore/utils/device/device_utility.dart';
import 'package:estore/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: ESizes.appBarHeight,
            left: ESizes.defaultSpace,
            right: ESizes.defaultSpace,
            bottom: ESizes.defaultSpace,
          ),
          child: Column(
            children: [
              //Header with logo and some texts

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Lottie Animation
                  Image.asset(
                    isDarkMode ? EImages.lightAppLogo : EImages.darkAppLogo,
                    width: EHelperFunctions.screenWidth() * 0.3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Welcome back text
                  Text(
                    ETexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    ETexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              const SizedBox(height: ESizes.defaultSpace),

              //Login Textfield Forms

              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(ETexts.firstName),
                        prefixIcon: Icon(Iconsax.text)),
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(ETexts.lastName),
                        prefixIcon: Icon(Iconsax.text)),
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text(ETexts.email),
                        prefixIcon: Icon(Iconsax.direct_right)),
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(ETexts.password),
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                ],
              )),

              const SizedBox(height: ESizes.spaceBtwSections),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text(ETexts.signUp))),
              const SizedBox(height: ESizes.defaultSpace),
              const Text(ETexts.alreadyhaveanaccount),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {}, child: const Text(ETexts.login))),
            ],
          ),
        ),
      ),
    );
  }
}
