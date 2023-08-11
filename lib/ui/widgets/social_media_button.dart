import 'package:flutter/material.dart';
import 'package:portfolio/util/app_colors.dart';

class SocialMedias extends StatelessWidget {
  final String image;
  final bool isselected;
  final Function() ontap;

  const SocialMedias({
    super.key,
    required this.image,
    this.isselected = false,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: AppColors.secondaryColor,
        child: CircleAvatar(
          backgroundColor:
              isselected ? AppColors.secondaryColor : AppColors.primaryColor,
          radius: 18,
          child: Image.asset(
            image,
            color:
                isselected ? AppColors.primaryColor : AppColors.secondaryColor,
            height: 20,
          ),
        ),
      ),
    );
  }
}
