import 'package:estore/utils/constants/colors.dart';
import 'package:estore/utils/constants/image_strings.dart';
import 'package:estore/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ESocialButtons extends StatelessWidget {
  const ESocialButtons({
    super.key,
    required this.onTap1,
    required this.onTap2,
  });

  final VoidCallback onTap1;
  final VoidCallback onTap2;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: EColors.borderPrimary),
            borderRadius: BorderRadius.circular(50)),
        child: IconButton(
            onPressed: onTap1,
            icon: const Image(
              image: AssetImage(EImages.google),
              height: ESizes.iconMd,
              width: ESizes.iconMd,
            )),
      ),
      const SizedBox(width: ESizes.spaceBtwInputFields),
      Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: EColors.borderPrimary),
            borderRadius: BorderRadius.circular(50)),
        child: IconButton(
            onPressed: onTap2,
            icon: const Image(
              image: AssetImage(EImages.facebook),
              height: ESizes.iconMd,
              width: ESizes.iconMd,
            )),
      ),
    ]);
  }
}
