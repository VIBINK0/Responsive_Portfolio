import 'package:flutter/material.dart';

import '../../util/app_colors.dart';

class AppBarItems extends StatefulWidget {
  final String text;
  final bool isSlected;
  final Function()? onTap;

  const AppBarItems({
    Key? key,
    required this.text,
    this.isSlected = false,
    this.onTap,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
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


//  AppBarItems(
//                   text: 'Home',
//                   isSlected: appItem[0],
//                   onTap: () {
//                     _handleTab(0);
//                   },
//                 ),
//                 const SizedBox(width: AppSize.defaultSize),
//                 AppBarItems(
//                   text: 'About',
//                   isSlected: appItem[1],
//                   onTap: () {
//                     _handleTab(1);
//                   },
//                 ),
//                 const SizedBox(width: AppSize.defaultSize),
//                 AppBarItems(
//                   text: 'Skills',
//                   isSlected: appItem[2],
//                   onTap: () {
//                     _handleTab(2);
//                   },
//                 ),
//                 const SizedBox(width: AppSize.defaultSize),
//                 AppBarItems(
//                   text: 'Portfolio',
//                   isSlected: appItem[3],
//                   onTap: () {
//                     _handleTab(3);
//                   },
//                 ),
//                 const SizedBox(width: AppSize.defaultSize),
//                 AppBarItems(
//                   text: 'Contact',
//                   isSlected: appItem[4],
//                   onTap: () {
//                     _handleTab(4);
//                   },
//                 ),