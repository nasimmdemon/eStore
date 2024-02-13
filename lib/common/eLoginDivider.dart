import 'package:estore/utils/constants/colors.dart';
import 'package:estore/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class ELoginDivider extends StatelessWidget {
  const ELoginDivider({
    super.key,
    required this.isDarkMode,
    required this.title,
  });

  final bool isDarkMode;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
                color: isDarkMode ? EColors.darkGrey : EColors.grey,
                thickness: 0.5,
                indent: 60,
                endIndent: 5)),
        Text(title.capitalize!, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
                color: isDarkMode ? EColors.darkGrey : Colors.grey,
                thickness: 0.5,
                indent: 5,
                endIndent: 60)),
      ],
    );
  }
}
