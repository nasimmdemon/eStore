import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.light,
      backgroundColor: EColors.primary,
      disabledForegroundColor: EColors.darkGrey,
      disabledBackgroundColor: EColors.buttonDisabled,
      side: const BorderSide(color: EColors.primary),
      padding: const EdgeInsets.symmetric(vertical: ESizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: EColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ESizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.light,
      backgroundColor: EColors.primary,
      disabledForegroundColor: EColors.darkGrey,
      disabledBackgroundColor: EColors.darkerGrey,
      side: const BorderSide(color: EColors.primary),
      padding: const EdgeInsets.symmetric(vertical: ESizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: EColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ESizes.buttonRadius)),
    ),
  );
}
