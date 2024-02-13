import 'package:estore/features/authentication/screens/Signup/singup_screen.dart';
import 'package:estore/utils/constants/image_strings.dart';
import 'package:estore/utils/constants/sizes.dart';
import 'package:estore/utils/constants/text_strings.dart';

import 'package:estore/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDarkMode = EHelperFunctions.isDarkMode(context);
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //App logo
                  Image.asset(
                    isDarkMode ? EImages.lightAppLogo : EImages.darkAppLogo,
                    width: EHelperFunctions.screenWidth() * 0.3,
                  ),

                  //Welcome back text
                  Text(
                    ETexts.loginTitle,
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
              //? Remember me and forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(ETexts.rememberMe),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(ETexts.forgetPassword)),
                ],
              ),
              const SizedBox(height: ESizes.spaceBtwSections),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text(ETexts.signIn))),
              const SizedBox(height: ESizes.defaultSpace),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => Get.to(() => const SignupScreen()),
                      child: const Text(ETexts.createAccount))),
            ],
          ),
        ),
      ),
    );
  }
}
