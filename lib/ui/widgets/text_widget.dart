import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import '../../util/app_colors.dart';
import '../../util/app_size.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1100),
          child: Text(
            'Hello, It\'s Me',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.primaryTextColor),
          ),
        ),
        FadeInRight(
          duration: const Duration(milliseconds: 1100),
          child: Text(
            'VIBIN K',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.primaryTextColor),
          ),
        ),
        Row(
          children: [
            FadeInUp(
              duration: const Duration(milliseconds: 1100),
              child: Text(
                'And I\'m a ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.primaryTextColor),
              ),
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 1100),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Flutter Developer',
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.secondaryColor),
                      speed: const Duration(milliseconds: 100)),
                ],
                totalRepeatCount: 999999,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSize.defaultheight / 2.5),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2.3,
          child: FadeInLeft(
            duration: const Duration(milliseconds: 1500),
            delay: const Duration(milliseconds: 1500),
            child: Text(
              'Passionate about creating engaging and interactive user experiences, I am a Computer Science graduate with expertise in Flutter, Dart, HTML, and CSS..... ',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: AppColors.primaryTextColor),
            ),
          ),
        ),
      ],
    );
  }
}
