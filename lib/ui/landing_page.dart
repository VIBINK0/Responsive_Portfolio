import 'package:flutter/material.dart';
import 'package:portfolio/ui/screens/contact_screen.dart';
import 'package:portfolio/ui/screens/projects_screen.dart';
import 'package:portfolio/ui/screens/service_screen.dart';
import 'package:portfolio/util/app_colors.dart';
import 'package:portfolio/util/app_size.dart';
import 'screens/about_screen.dart';
import 'screens/home_screen.dart';
import 'widgets/appbar_items.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<bool> appItem = [
    true,
    false,
    false,
    false,
    false,
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        toolbarHeight: AppSize.defaultheight,
        title: Padding(
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
                onTap: () {
                  _handleTab(0);
                },
              ),
              const SizedBox(width: AppSize.defaultSize),
              AppBarItems(
                text: 'About',
                isSlected: appItem[1],
                onTap: () {
                  _handleTab(1);
                },
              ),
              const SizedBox(width: AppSize.defaultSize),
              AppBarItems(
                text: 'Skills',
                isSlected: appItem[2],
                onTap: () {
                  _handleTab(2);
                },
              ),
              const SizedBox(width: AppSize.defaultSize),
              AppBarItems(
                text: 'Portfolio',
                isSlected: appItem[3],
                onTap: () {
                  _handleTab(3);
                },
              ),
              const SizedBox(width: AppSize.defaultSize),
              AppBarItems(
                text: 'Contact',
                isSlected: appItem[4],
                onTap: () {
                  _handleTab(4);
                },
              ),
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HomeScreen(),
            //AboutScreen(),
            // ServiceScreen(),
            // ProjectScreen(),
            // ContactScreen(),
          ],
        ),
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
