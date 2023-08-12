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
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      focusColor: AppColors.secondaryColor,
      padding: const EdgeInsets.symmetric(
          horizontal: AppSize.defaultSize, vertical: AppSize.defaultSize / 2),
      color:
          widget.isSelected ? AppColors.primaryColor : AppColors.secondaryColor,
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.defaultSize),
          borderSide: const BorderSide(color: AppColors.secondaryColor)),
      onPressed: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      },
      child: Text(
        widget.buttonName,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: widget.isSelected
                  ? AppColors.secondaryColor
                  : AppColors.primaryColor,
            ),
      ),
    );
  }
}
