import 'package:flutter/material.dart';

import '../../util/app_colors.dart';

class AppBarItems extends StatefulWidget {
  final String text;
  final bool isSlected;
  final Function() onTap;

  const AppBarItems({
    Key? key,
    required this.text,
    this.isSlected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  _AppBarItemsState createState() => _AppBarItemsState();
}

class _AppBarItemsState extends State<AppBarItems> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Text(
          widget.text,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: isHovered
                    ? AppColors.secondaryColor
                    : widget.isSlected
                        ? AppColors.secondaryColor
                        : AppColors.primaryTextColor,
              ),
        ),
      ),
    );
  }
}
