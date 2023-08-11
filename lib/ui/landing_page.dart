import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/animated_image.dart';
import 'package:portfolio/ui/widgets/social_button.dart';
import 'package:portfolio/ui/widgets/text_widget.dart';
import 'package:portfolio/util/app_colors.dart';
import 'package:portfolio/util/app_size.dart';
import 'widgets/download_button.dart';
import 'widgets/my_app_bar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        toolbarHeight: AppSize.defaultheight,
        title: const MyAppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(128, 150, 0, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(),
                  const SizedBox(height: AppSize.defaultheight / 2.5),
                  const SocialButton(),
                  const SizedBox(height: AppSize.defaultheight / 2.5),
                  DownloadButton(),
                ],
              ),
              const Spacer(),
              const Padding(
                  padding: EdgeInsets.only(right: AppSize.defaultwidth),
                  child: AnimatedImage()),
            ],
          ),
        ),
      ),
    );
  }
}
