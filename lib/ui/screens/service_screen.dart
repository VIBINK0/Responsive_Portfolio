import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/helper_class/helper_class.dart';
import 'package:portfolio/ui/widgets/container_widget.dart';
import 'package:portfolio/util/app_assets.dart';
import 'package:portfolio/util/app_size.dart';

import '../widgets/heading_text.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HelperClass(
      mobile: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: AppSize.defaultSize, horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                duration: const Duration(milliseconds: 2000),
                child: const HeadingText(text1: 'My', text2: ' Services'),
              ),
              const SizedBox(height: AppSize.defaultheight),
              FadeInUp(
                duration: const Duration(milliseconds: 2000),
                child: const Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    ContainerWidget(
                      headingText: 'App Development',
                      details:
                          ' I am a dedicated and enthusiastic Flutter developer, deeply committed to crafting innovative and user-friendly mobile applications. With a strong background in Flutter, I have honed my skills to transform ideas into elegant, functional, and visually appealing apps.',
                      icon: AppAssets.coding,
                    ),
                    SizedBox(height: AppSize.defaultSize),
                    ContainerWidget(
                      headingText: 'UI/UX Design',
                      details:
                          'I am thrilled to introduce myself as a dedicated and innovative UI/UX designer, ready to transform digital experiences into captivating journeys. With a keen eye for aesthetics and a passion for user-centered design, I strive to create interfaces that seamlessly blend form and function.',
                      icon: AppAssets.brush,
                    ),
                    SizedBox(height: AppSize.defaultSize),
                    ContainerWidget(
                      headingText: 'Web Development',
                      details:
                          'I am a passionate Frontend Developer on a perpetual quest to craft captivating digital experiences. With a deep-rooted love for blending design aesthetics with cutting-edge technology, I thrive in the realm where creativity meets functionality.',
                      icon: AppAssets.coding,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      tablet: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSize.defaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                duration: const Duration(milliseconds: 2000),
                child: const HeadingText(text1: 'My', text2: ' Services'),
              ),
              const SizedBox(height: AppSize.defaultheight),
              FadeInUp(
                duration: const Duration(milliseconds: 2000),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContainerWidget(
                      headingText: 'App Development',
                      details:
                          ' I am a dedicated and enthusiastic Flutter developer, deeply committed to crafting innovative and user-friendly mobile applications. With a strong background in Flutter, I have honed my skills to transform ideas into elegant, functional, and visually appealing apps.',
                      icon: AppAssets.coding,
                    ),
                    SizedBox(width: AppSize.defaultSize),
                    ContainerWidget(
                      headingText: 'UI/UX Design',
                      details:
                          'I am thrilled to introduce myself as a dedicated and innovative UI/UX designer, ready to transform digital experiences into captivating journeys. With a keen eye for aesthetics and a passion for user-centered design, I strive to create interfaces that seamlessly blend form and function.',
                      icon: AppAssets.brush,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.defaultSize),
              const ContainerWidget(
                headingText: 'Web Development',
                details:
                    'I am a passionate Frontend Developer on a perpetual quest to craft captivating digital experiences. With a deep-rooted love for blending design aesthetics with cutting-edge technology, I thrive in the realm where creativity meets functionality.',
                icon: AppAssets.coding,
              ),
            ],
          ),
        ),
      ),
      desktop: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(
              duration: const Duration(milliseconds: 2000),
              child: const HeadingText(text1: 'My', text2: ' Services'),
            ),
            const SizedBox(height: AppSize.defaultheight),
            FadeInUp(
              duration: const Duration(milliseconds: 2000),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContainerWidget(
                    headingText: 'App Development',
                    details:
                        ' I am a dedicated and enthusiastic Flutter developer, deeply committed to crafting innovative and user-friendly mobile applications. With a strong background in Flutter, I have honed my skills to transform ideas into elegant, functional, and visually appealing apps.',
                    icon: AppAssets.coding,
                  ),
                  SizedBox(width: AppSize.defaultSize),
                  ContainerWidget(
                    headingText: 'UI/UX Design',
                    details:
                        'I am thrilled to introduce myself as a dedicated and innovative UI/UX designer, ready to transform digital experiences into captivating journeys. With a keen eye for aesthetics and a passion for user-centered design, I strive to create interfaces that seamlessly blend form and function.',
                    icon: AppAssets.brush,
                  ),
                  SizedBox(width: AppSize.defaultSize),
                  ContainerWidget(
                    headingText: 'Web Development',
                    details:
                        'I am a passionate Frontend Developer on a perpetual quest to craft captivating digital experiences. With a deep-rooted love for blending design aesthetics with cutting-edge technology, I thrive in the realm where creativity meets functionality.',
                    icon: AppAssets.coding,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
