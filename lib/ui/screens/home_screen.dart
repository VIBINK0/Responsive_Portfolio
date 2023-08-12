import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../util/app_size.dart';
import '../widgets/animated_image.dart';
import '../widgets/download_button.dart';
import '../widgets/social_button.dart';
import '../widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextWidget(),
              const SizedBox(height: AppSize.defaultheight / 2.5),
              const SocialButton(),
              const SizedBox(height: AppSize.defaultheight / 2.5),
              FadeInUp(
                  duration: const Duration(milliseconds: 2000),
                  delay: const Duration(milliseconds: 2500),
                  child: DownloadButton(
                    buttonName: 'Download CV',
                  )),
            ],
          ),
          const AnimatedImage(),
        ],
      ),
    );
  }
}
