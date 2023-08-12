import 'package:flutter/material.dart';
import 'package:portfolio/ui/screens/projects_screen.dart';
import 'package:portfolio/ui/screens/service_screen.dart';
import 'package:portfolio/util/app_colors.dart';
import 'package:portfolio/util/app_size.dart';
import 'screens/about_screen.dart';
import 'screens/home_screen.dart';
import 'widgets/my_app_bar.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        toolbarHeight: AppSize.defaultheight,
        title: const MyAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const HomeScreen(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const AboutScreen(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const ServiceScreen(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const ProjectScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
