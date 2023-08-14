import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../util/app_assets.dart';
import '../../util/app_colors.dart';
import '../../util/app_size.dart';
import '../widgets/download_button.dart';
import '../widgets/heading_text.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: AppColors.containerColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInRight(
            duration: const Duration(milliseconds: 2000),
            child: Image.asset(
              AppAssets.pro2,
              height: 430,
              width: 380,
            ),
          ),
          const SizedBox(width: AppSize.defaultSize / 2),
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                FadeInDown(
                  duration: const Duration(milliseconds: 2000),
                  child: const HeadingText(text1: 'About', text2: ' Me'),
                ),
                const SizedBox(height: AppSize.defaultSize / 2),
                FadeInRight(
                  duration: const Duration(milliseconds: 1500),
                  delay: const Duration(seconds: 1),
                  child: Text(
                    'Flutter Developer ',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.primaryTextColor),
                  ),
                ),
                const SizedBox(height: AppSize.defaultSize / 2),
                FadeInRight(
                  duration: const Duration(milliseconds: 1500),
                  delay: const Duration(seconds: 1),
                  child: Text(
                    '''Passionate about creating engaging and interactive user experiences, I am a Computer Science graduate with expertise in Flutter, HTML, and CSS.With a strong foundation in programming concepts and app development, I strive to build innovative and user-friendly applications,I am excited about the opportunity to leverage my skills in Flutter, HTML, and CSS to create exceptional user experiences and contribute to the success of innovative projects. If you are looking for a dedicated and skilled developer,  I would be thrilled to connect and explore potential opportunities.''',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: AppColors.primaryTextColor),
                    textAlign: TextAlign.justify,
                  ),
                ),
                const SizedBox(height: AppSize.defaultSize),
                FadeInRight(
                  duration: const Duration(milliseconds: 1500),
                  delay: const Duration(seconds: 1),
                  child: DownloadButton(buttonName: 'Read More..'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
