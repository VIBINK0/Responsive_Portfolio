import 'package:flutter/material.dart';

class HelperClass extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const HelperClass(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  static bool ismobile(context) => MediaQuery.of(context).size.width <= 768;
  static bool istablet(context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width > 768;
  static bool isdesktop(context) => MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth < 768) {
        return mobile;
      } else if (Constraints.maxWidth < 1200) {
        return SizedBox(
          //  height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: tablet,
        );
      } else {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: desktop,
        );
      }
    });
  }
}
