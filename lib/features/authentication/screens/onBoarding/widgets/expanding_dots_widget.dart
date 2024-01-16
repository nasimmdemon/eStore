import 'package:estore/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:estore/utils/constants/colors.dart';
import 'package:estore/utils/constants/sizes.dart';
import 'package:estore/utils/device/device_utility.dart';
import 'package:estore/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ExpandingDotsWidget extends StatelessWidget {
  ExpandingDotsWidget({
    super.key,
  });

  final controller = OnBoardingController.instance;

  @override
  Widget build(BuildContext context) {
    var isDarkMode = EHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: EDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: ESizes.defaultSpace,
        child: SmoothPageIndicator(
          onDotClicked: controller.handleDotclicks,
          controller: controller.pageController,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: isDarkMode ? EColors.light : EColors.dark,
              dotHeight: 5),
        ));
  }
}
