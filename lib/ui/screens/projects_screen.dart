import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/helper_class/helper_class.dart';
import 'package:portfolio/ui/widgets/heading_text.dart';
import 'package:portfolio/util/app_assets.dart';
import 'package:portfolio/util/app_colors.dart';
import 'package:portfolio/util/app_size.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  final List images = <String>[
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
    AppAssets.work1,
    AppAssets.work2,
  ];

  // ignore: prefer_typing_uninitialized_variables
  var ishover;

  @override
  Widget build(BuildContext context) {
    return HelperClass(
      mobile: Container(
        color: AppColors.containerColor,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeInDown(
                  duration: const Duration(milliseconds: 2000),
                  child:
                      const HeadingText(text1: 'Latest', text2: ' Projects')),
              //const SizedBox(height: AppSize.defaultheight),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40,
                    top: AppSize.defaultSize,
                    bottom: AppSize.defaultSize),
                child: FadeInUp(
                  duration: const Duration(milliseconds: 2000),
                  child: GridView.builder(
                      itemCount: images.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisExtent: 230,
                        mainAxisSpacing: AppSize.defaultSize,
                        // crossAxisSpacing: AppSize.defaultSize,
                      ),
                      itemBuilder: (context, index) {
                        var image = images[index];
                        return InkWell(
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          onTap: () {},
                          onHover: (f) {
                            setState(() {
                              if (f) {
                                ishover = index;
                              } else {
                                ishover = null;
                              }
                            });
                          },
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image(
                                  image: AssetImage(image),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Visibility(
                                visible: index == ishover,
                                child: Container(
                                  width: 345,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppSize.defaultSize),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: LinearGradient(
                                      colors: [
                                        AppColors.secondaryColor
                                            .withOpacity(0.2),
                                        AppColors.secondaryColor
                                            .withOpacity(0.3),
                                        AppColors.secondaryColor
                                            .withOpacity(0.4),
                                        AppColors.secondaryColor
                                            .withOpacity(0.5),
                                        AppColors.secondaryColor
                                            .withOpacity(0.7),
                                        AppColors.secondaryColor
                                            .withOpacity(0.9),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'App Design',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color:
                                                    AppColors.primaryTextColor,
                                                fontSize: 24),
                                      ),
                                      Text(
                                        'OOps! Something Wrong',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                color:
                                                    AppColors.primaryTextColor),
                                        textAlign: TextAlign.center,
                                      ),
                                      GestureDetector(
                                        child: CircleAvatar(
                                          backgroundColor:
                                              AppColors.primaryTextColor,
                                          child: Padding(
                                            padding: const EdgeInsets.all(
                                                AppSize.defaultSize / 3),
                                            child: Image.asset(AppAssets.share),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
      tablet: Container(
        color: AppColors.containerColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInDown(
                duration: const Duration(milliseconds: 2000),
                child: const HeadingText(text1: 'Latest', text2: ' Projects')),
            const SizedBox(height: AppSize.defaultheight),
            Padding(
              padding: const EdgeInsets.only(
                  left: AppSize.defaultheight,
                  top: AppSize.defaultSize,
                  bottom: AppSize.defaultSize),
              child: FadeInUp(
                duration: const Duration(milliseconds: 2000),
                child: GridView.builder(
                    itemCount: images.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 230,
                      mainAxisSpacing: AppSize.defaultSize,
                      crossAxisSpacing: AppSize.defaultSize,
                    ),
                    itemBuilder: (context, index) {
                      var image = images[index];
                      return InkWell(
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        onTap: () {},
                        onHover: (f) {
                          setState(() {
                            if (f) {
                              ishover = index;
                            } else {
                              ishover = null;
                            }
                          });
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image(
                                image: AssetImage(image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Visibility(
                              visible: index == ishover,
                              child: Container(
                                width: 345,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: AppSize.defaultSize),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.secondaryColor.withOpacity(0.2),
                                      AppColors.secondaryColor.withOpacity(0.3),
                                      AppColors.secondaryColor.withOpacity(0.4),
                                      AppColors.secondaryColor.withOpacity(0.5),
                                      AppColors.secondaryColor.withOpacity(0.7),
                                      AppColors.secondaryColor.withOpacity(0.9),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'App Design',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: AppColors.primaryTextColor,
                                              fontSize: 24),
                                    ),
                                    Text(
                                      'Passionate about creating engaging and interactive user experiences, I am a Computer Science graduate with expertise in Flutter, Dart, HTML, and CSS.....',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color:
                                                  AppColors.primaryTextColor),
                                      textAlign: TextAlign.center,
                                    ),
                                    GestureDetector(
                                      child: CircleAvatar(
                                        backgroundColor:
                                            AppColors.primaryTextColor,
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                              AppSize.defaultSize / 3),
                                          child: Image.asset(AppAssets.share),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
      desktop: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColors.containerColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FadeInDown(
                duration: const Duration(milliseconds: 2000),
                child: const HeadingText(text1: 'Latest', text2: ' Projects')),
            const SizedBox(height: AppSize.defaultSize),
            Padding(
              padding: const EdgeInsets.only(
                  left: AppSize.paddingWidth,
                  top: AppSize.defaultSize,
                  bottom: AppSize.defaultSize),
              child: FadeInUp(
                duration: const Duration(milliseconds: 2000),
                child: GridView.builder(
                    itemCount: images.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 230,
                      mainAxisSpacing: AppSize.defaultSize,
                      crossAxisSpacing: AppSize.defaultSize,
                    ),
                    itemBuilder: (context, index) {
                      var image = images[index];
                      return InkWell(
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        onTap: () {},
                        onHover: (f) {
                          setState(() {
                            if (f) {
                              ishover = index;
                            } else {
                              ishover = null;
                            }
                          });
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image(
                                image: AssetImage(image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Visibility(
                              visible: index == ishover,
                              child: Container(
                                width: 345,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: AppSize.defaultSize),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.secondaryColor.withOpacity(0.2),
                                      AppColors.secondaryColor.withOpacity(0.3),
                                      AppColors.secondaryColor.withOpacity(0.4),
                                      AppColors.secondaryColor.withOpacity(0.5),
                                      AppColors.secondaryColor.withOpacity(0.7),
                                      AppColors.secondaryColor.withOpacity(0.9),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'App Design',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: AppColors.primaryTextColor,
                                              fontSize: 24),
                                    ),
                                    Text(
                                      'Passionate about creating engaging and interactive user experiences, I am a Computer Science graduate with expertise in Flutter, Dart, HTML, and CSS.....',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color:
                                                  AppColors.primaryTextColor),
                                      textAlign: TextAlign.center,
                                    ),
                                    GestureDetector(
                                      child: CircleAvatar(
                                        backgroundColor:
                                            AppColors.primaryTextColor,
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                              AppSize.defaultSize / 3),
                                          child: Image.asset(AppAssets.share),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
