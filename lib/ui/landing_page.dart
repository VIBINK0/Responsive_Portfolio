import 'package:flutter/material.dart';
import 'package:portfolio/util/app_colors.dart';
import 'package:portfolio/util/app_size.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'screens/about_screen.dart';
import 'screens/contact_screen.dart';
import 'screens/home_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/service_screen.dart';
import 'widgets/appbar_item.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ItemScrollController _itemScrollController = ItemScrollController();

  List<bool> appItem = [
    true,
    false,
    false,
    false,
    false,
  ];

  List appItemName = <String>[
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Contact',
  ];

  final screensList = const <Widget>[
    HomeScreen(),
    AboutScreen(),
    ServiceScreen(),
    ProjectScreen(),
    ContactScreen(),
  ];

  Future scrollTo({required int index}) async {
    _itemScrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 500),
    );
  }

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        toolbarHeight: AppSize.defaultheight,
        title: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 750) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Portfolio.',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: AppColors.primaryTextColor),
                ),
                const Spacer(),
                PopupMenuButton(
                  position: PopupMenuPosition.under,
                  constraints: BoxConstraints.tightFor(
                      width: MediaQuery.of(context).size.width / 1.2),
                  icon: const Icon(Icons.menu),
                  itemBuilder: (BuildContext context) => appItemName
                      .asMap()
                      .entries
                      .map(
                        (e) => PopupMenuItem(
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: AppColors.primaryTextColor),
                          child: Text(e.value),
                          onTap: () {
                            scrollTo(index: e.key);
                          },
                        ),
                      )
                      .toList(),
                )
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Portfolio.',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(color: AppColors.primaryTextColor),
                ),
                const Spacer(),
                SizedBox(
                  height: 30,
                  child: ListView.separated(
                    itemCount: appItemName.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: AppSize.defaultSize),
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          scrollTo(index: index);
                          _handleTab(index);
                        },
                        borderRadius: BorderRadius.circular(100),
                        child: AppBarItems(
                          text: appItemName[index],
                          isSlected: appItem[index],
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }
        }),
      ),
      body: ScrollablePositionedList.builder(
        itemCount: screensList.length,
        itemScrollController: _itemScrollController,
        // itemPositionsListener: itemPositionsListener,
        //scrollOffsetListener: scrollOffsetListener,
        itemBuilder: (context, index) {
          return screensList[index];
        },
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
