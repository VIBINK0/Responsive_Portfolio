import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/helper_class/helper_class.dart';
import 'package:portfolio/ui/widgets/download_button.dart';
import 'package:portfolio/util/app_colors.dart';
import 'package:portfolio/util/app_size.dart';

import '../widgets/heading_text.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HelperClass(
      mobile: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSize.defaultheight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                  duration: const Duration(milliseconds: 2000),
                  child: const HeadingText(text1: 'Contact', text2: ' Me!')),
              const SizedBox(height: AppSize.defaultSize),
              const Expanded(
                child: TextFileldWidget(
                  name: 'Full Name',
                ),
              ),
              const SizedBox(height: AppSize.defaultSize),
              const Expanded(
                child: TextFileldWidget(
                  name: 'Email Address',
                ),
              ),
              const SizedBox(height: AppSize.defaultSize),
              const Expanded(
                child: TextFileldWidget(
                  name: 'Mobile Number',
                ),
              ),
              const SizedBox(height: AppSize.defaultSize),
              const Expanded(
                child: TextFileldWidget(
                  name: 'Email Subject',
                ),
              ),
              const SizedBox(height: AppSize.defaultSize),
              const TextFileldWidget(
                name: 'Your Message',
                maxline: 10,
              ),
              const SizedBox(height: AppSize.defaultSize),
              DownloadButton(
                buttonName: 'Send Message',
              ),
            ],
          ),
        ),
      ),
      tablet: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSize.defaultheight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                  duration: const Duration(milliseconds: 2000),
                  child: const HeadingText(text1: 'Contact', text2: ' Me!')),
              const SizedBox(height: AppSize.defaultSize),
              const Row(
                children: [
                  Expanded(
                    child: TextFileldWidget(
                      name: 'Full Name',
                    ),
                  ),
                  SizedBox(width: AppSize.defaultSize),
                  Expanded(
                    child: TextFileldWidget(
                      name: 'Email Address',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.defaultSize),
              const Row(
                children: [
                  Expanded(
                    child: TextFileldWidget(
                      name: 'Mobile Number',
                    ),
                  ),
                  SizedBox(width: AppSize.defaultSize),
                  Expanded(
                    child: TextFileldWidget(
                      name: 'Email Subject',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.defaultSize),
              const TextFileldWidget(
                name: 'Your Message',
                maxline: 10,
              ),
              const SizedBox(height: AppSize.defaultSize),
              DownloadButton(
                buttonName: 'Send Message',
              ),
            ],
          ),
        ),
      ),
      desktop: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.appBarwidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                  duration: const Duration(milliseconds: 2000),
                  child: const HeadingText(text1: 'Contact', text2: ' Me!')),
              const SizedBox(height: AppSize.defaultSize),
              const Row(
                children: [
                  Expanded(
                    child: TextFileldWidget(
                      name: 'Full Name',
                    ),
                  ),
                  SizedBox(width: AppSize.defaultSize),
                  Expanded(
                    child: TextFileldWidget(
                      name: 'Email Address',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.defaultSize),
              const Row(
                children: [
                  Expanded(
                    child: TextFileldWidget(
                      name: 'Mobile Number',
                    ),
                  ),
                  SizedBox(width: AppSize.defaultSize),
                  Expanded(
                    child: TextFileldWidget(
                      name: 'Email Subject',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.defaultSize),
              const TextFileldWidget(
                name: 'Your Message',
                maxline: 10,
              ),
              const SizedBox(height: AppSize.defaultSize),
              FadeInUp(
                duration: const Duration(milliseconds: 2000),
                child: DownloadButton(
                  buttonName: 'Send Message',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFileldWidget extends StatelessWidget {
  const TextFileldWidget({
    super.key,
    required this.name,
    this.maxline = 1,
  });

  final String name;
  final int maxline;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 2000),
      child: TextField(
        decoration: InputDecoration(
          hintText: name,
          filled: true,
          fillColor: AppColors.containerColor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: AppSize.defaultSize / 2,
            horizontal: AppSize.defaultSize / 2,
          ),
        ),
        maxLines: maxline,
      ),
    );
  }
}
