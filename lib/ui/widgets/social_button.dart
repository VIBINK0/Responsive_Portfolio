import 'package:flutter/material.dart';
import 'package:portfolio/util/app_size.dart';

import '../../util/app_assets.dart';
import 'social_media_button.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({
    super.key,
  });

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  List<bool> isSelectedList = [
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialMedias(
          image: AppAssets.face,
          isselected: isSelectedList[0],
          ontap: () {
            _handleTap(0);
          },
        ),
        const SizedBox(width: AppSize.defaultSize),
        SocialMedias(
          image: AppAssets.twit,
          isselected: isSelectedList[1],
          ontap: () {
            _handleTap(1);
          },
        ),
        const SizedBox(width: AppSize.defaultSize),
        SocialMedias(
          isselected: isSelectedList[2],
          image: AppAssets.insta,
          ontap: () {
            _handleTap(2);
          },
        ),
        const SizedBox(width: AppSize.defaultSize),
        SocialMedias(
          isselected: isSelectedList[3],
          image: AppAssets.link,
          ontap: () {
            _handleTap(3);
          },
        ),
        const SizedBox(width: AppSize.defaultSize),
        SocialMedias(
          image: AppAssets.git,
          isselected: isSelectedList[4],
          ontap: () {
            _handleTap(4);
          },
        ),
      ],
    );
  }

  void _handleTap(int index) {
    setState(() {
      for (int i = 0; i < isSelectedList.length; i++) {
        isSelectedList[i] = false;
      }
      isSelectedList[index] = !isSelectedList[index];
    });
  }
}
