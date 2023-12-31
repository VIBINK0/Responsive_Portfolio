import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/helper_class/helper_class.dart';

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
    return HelperClass(
      mobile: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 30,
          ),
          child: Column(
            children: [
              HomeInfoWidget(),
              SizedBox(height: 180),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: AnimatedImage(),
              ),
            ],
          ),
        ),
      ),
      tablet: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Padding(
          padding: EdgeInsets.only(top: 150, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: HomeInfoWidget()),
              AnimatedImage(),
            ],
          ),
        ),
      ),
      desktop: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Padding(
          padding: EdgeInsets.only(top: 150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeInfoWidget(),
              AnimatedImage(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeInfoWidget extends StatelessWidget {
  const HomeInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
