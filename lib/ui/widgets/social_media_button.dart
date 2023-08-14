import 'package:flutter/material.dart';
import 'package:portfolio/util/app_colors.dart';

class SocialMedias extends StatefulWidget {
  final String image;
  //final bool isselected;
  final Function() ontap;

  const SocialMedias({
    super.key,
    required this.image,
    // this.isselected = false,
    required this.ontap,
  });

  @override
  State<SocialMedias> createState() => _SocialMediasState();
}

class _SocialMediasState extends State<SocialMedias> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          ishover = true;
        });
      },
      onExit: (_) {
        setState(() {
          ishover = false;
        });
      },
      child: GestureDetector(
        onTap: widget.ontap,
        child: CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.secondaryColor,
          child: CircleAvatar(
            backgroundColor:
                ishover ? AppColors.secondaryColor : AppColors.primaryColor,
            radius: 18,
            child: Image.asset(
              widget.image,
              color:
                  ishover ? AppColors.primaryColor : AppColors.secondaryColor,
              height: 20,
            ),
          ),
        ),
      ),
    );
  }
}
