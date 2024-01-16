import 'package:estore/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../constants/sizes.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: EColors.darkGrey,
    suffixIconColor: EColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: ESizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: ESizes.fontSizeMd, color: EColors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: ESizes.fontSizeSm, color: EColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: EColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: EColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: EColors.darkGrey,
    suffixIconColor: EColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: ESizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: ESizes.fontSizeMd, color: EColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: ESizes.fontSizeSm, color: EColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: EColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: EColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: EColors.warning),
    ),
  );
}
