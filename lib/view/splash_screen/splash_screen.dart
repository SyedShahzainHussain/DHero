import 'package:dhero/utils/extension/general_extension.dart';
import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../../config/routes/app_pages.dart';
import '../../utils/image_string.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                SImageString.splashScreenImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Image.asset(
              SImageString.appLogo,
              width: context.mediaQueryWidth / 2,
            ),
          ),
        ),
        floatingActionButton: GestureDetector(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, Routes.onBoardScreen, (route) => false);
          },
          child: const ImageIcon(
            AssetImage(
              SImageString.rightArrow,
            ),
            color: AppColors.white,
            size: 50,
          ),
        ));
  }
}
