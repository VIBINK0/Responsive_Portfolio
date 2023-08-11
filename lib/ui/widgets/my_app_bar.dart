import 'package:flutter/material.dart';
import 'package:portfolio/util/app_colors.dart';
import 'package:portfolio/util/app_size.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({
    super.key,
  });

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  List<bool> appItem = [
    true,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.appBarwidth),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Portfolio.',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColors.primaryTextColor),
          ),
          const Spacer(),
          AppBarItems(
            text: 'Home',
            isSlected: appItem[0],
            ontap: () {
              _handleTab(0);
            },
          ),
          const SizedBox(width: AppSize.defaultSize),
          AppBarItems(
            text: 'About',
            isSlected: appItem[1],
            ontap: () {
              _handleTab(1);
            },
          ),
          const SizedBox(width: AppSize.defaultSize),
          AppBarItems(
            text: 'Skills',
            isSlected: appItem[2],
            ontap: () {
              _handleTab(2);
            },
          ),
          const SizedBox(width: AppSize.defaultSize),
          AppBarItems(
            text: 'Portfolio',
            isSlected: appItem[3],
            ontap: () {
              _handleTab(3);
            },
          ),
          const SizedBox(width: AppSize.defaultSize),
          AppBarItems(
            text: 'Contact',
            isSlected: appItem[4],
            ontap: () {
              _handleTab(4);
            },
          ),
        ],
      ),
    );
  }

  void _handleTab(int index) {
    setState(() {
      for (int i = 0; i < appItem.length; i++) {
        appItem[i] = false;
      }
      appItem[index] = !appItem[index];
    });
  }
}

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
