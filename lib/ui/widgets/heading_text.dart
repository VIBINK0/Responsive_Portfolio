import 'package:flutter/material.dart';
import 'package:portfolio/util/app_colors.dart';

class HeadingText extends StatelessWidget {
  final String text1, text2;
  const HeadingText({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: text1,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: AppColors.primaryTextColor),
          children: [
            TextSpan(
              text: text2,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColors.secondaryColor),
            )
          ]),
    );
  }
}
