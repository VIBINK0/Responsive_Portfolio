import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/download_button.dart';

import 'package:portfolio/util/app_colors.dart';
import 'package:portfolio/util/app_size.dart';

class ContainerWidget extends StatefulWidget {
  final String headingText, details, icon;

  const ContainerWidget({
    super.key,
    required this.headingText,
    required this.details,
    required this.icon,
  });

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (f) {
        setState(() {
          ishover = true;
        });
      },
      onExit: (f) {
        setState(() {
          ishover = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: AppSize.containerwidth,
        height: ishover ? 420 : AppSize.containerHeight,
        padding: const EdgeInsets.symmetric(horizontal: AppSize.defaultSize),
        decoration: BoxDecoration(
            color: AppColors.containerColor,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                width: 2.0,
                color: ishover
                    ? AppColors.secondaryColor
                    : AppColors.containerColor),
            boxShadow: const [
              BoxShadow(
                blurRadius: 12,
                spreadRadius: 5,
                color: AppColors.primaryColor,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              widget.icon,
              height: AppSize.iconSize,
              color: AppColors.secondaryColor,
            ),
            //  const SizedBox(height: AppSize.defaultSize / 4),
            Text(
              widget.headingText,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.primaryTextColor),
            ),
            // const SizedBox(height: AppSize.defaultSize / 4),
            Text(
              widget.details,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: AppColors.primaryTextColor),
              textAlign: TextAlign.justify,
            ),
            // const SizedBox(height: AppSize.defaultSize / 4),
            DownloadButton(buttonName: 'Read More..')
          ],
        ),
      ),
    );
  }
}
