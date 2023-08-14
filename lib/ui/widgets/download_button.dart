import 'package:flutter/material.dart';

import '../../util/app_colors.dart';
import '../../util/app_size.dart';

// ignore: must_be_immutable
class DownloadButton extends StatefulWidget {
  bool isSelected;
  final String buttonName;
  DownloadButton({
    super.key,
    this.isSelected = false,
    required this.buttonName,
  });

  @override
  State<DownloadButton> createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          ishover = true;
        });
      },
      onExit: (event) {
        setState(() {
          ishover = false;
        });
      },
      child: MaterialButton(
        focusColor: AppColors.secondaryColor,
        padding: const EdgeInsets.symmetric(
            horizontal: AppSize.defaultSize, vertical: AppSize.defaultSize / 2),
        color: ishover ? AppColors.primaryColor : AppColors.secondaryColor,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.defaultSize),
            borderSide: const BorderSide(color: AppColors.secondaryColor)),
        onPressed: () {},
        child: Text(
          widget.buttonName,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color:
                    ishover ? AppColors.secondaryColor : AppColors.primaryColor,
              ),
        ),
      ),
    );
  }
}
