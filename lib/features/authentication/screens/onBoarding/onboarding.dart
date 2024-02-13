import 'package:estore/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:estore/features/authentication/screens/onBoarding/widgets/expanding_dots_widget.dart';
import 'package:estore/features/authentication/screens/onBoarding/widgets/onboard_tabs_widget.dart';
import 'package:estore/utils/constants/colors.dart';
import 'package:estore/utils/constants/lottie_animations.dart';
import 'package:estore/utils/constants/sizes.dart';
import 'package:estore/utils/device/device_utility.dart';
import 'package:estore/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndex,
            children: const [
              //? Onboard Tabs Starts Here
              OnboardTabs(
                lottie: ELottieAnimations.onBoardingLottie1,
                title: ETexts.onBoardingTitle1,
                subTitle: ETexts.onBoardingSubTitle1,
              ),
              OnboardTabs(
                lottie: ELottieAnimations.onBoardingLottie2,
                title: ETexts.onBoardingTitle2,
                subTitle: ETexts.onBoardingSubTitle2,
              ),
              OnboardTabs(
                lottie: ELottieAnimations.onBoardingLottie3,
                title: ETexts.onBoardingTitle3,
                subTitle: ETexts.onBoardingSubTitle3,
              ),
              //! Onboard tabs ends here
            ],
          ),

          //skip button
          const SkipButton(),
          //dots
          ExpandingDotsWidget(),
          //next button

          CircleButton()
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  CircleButton({
    super.key,
  });
  final controller = OnBoardingController.instance;
  @override
  Widget build(BuildContext context) {
    var isDarkMode = EHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: EDeviceUtils.getBottomNavigationBarHeight(),
        right: ESizes.defaultSpace,
        child: ElevatedButton(
          onPressed: controller.nextPage,
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor:
                  isDarkMode ? Theme.of(context).primaryColor : EColors.dark),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    var isDarkMode = EHelperFunctions.isDarkMode(context);
    return Positioned(
        top: ESizes.appBarHeight,
        right: ESizes.defaultSpace,
        child: TextButton(
            onPressed: controller.skipPage,
            child: Text(
              ETexts.skip,
              style:
                  TextStyle(color: isDarkMode ? EColors.light : EColors.dark),
            )));
  }
}
