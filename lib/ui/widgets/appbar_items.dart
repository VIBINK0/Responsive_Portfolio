import 'package:flutter/material.dart';

import '../../util/app_colors.dart';

class AppBarItems extends StatelessWidget {
  final String text;
  final bool isSlected;
  final Function() ontap;
  const AppBarItems({
    super.key,
    required this.text,
    this.isSlected = false,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Text(
        text,
        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: isSlected
                  ? AppColors.secondaryColor
                  : AppColors.primaryTextColor,
            ),
      ),
    );
  }
}
