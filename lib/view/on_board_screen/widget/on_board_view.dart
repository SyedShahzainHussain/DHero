import 'package:dhero/view/on_board_screen/on_board_screen.dart';
import 'package:dhero/utils/extension/general_extension.dart';
import 'package:flutter/material.dart';

class OnBoardView extends StatelessWidget {
  final PageController pageController;
  const OnBoardView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.mediaQueryHeight / 2,
      width: context.mediaQueryWidth,
      child: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (pageIndex) {},
        itemBuilder: (context, index) {
          return SizedBox(
            width: context.mediaQueryWidth,
            child: Image.asset(
              sliderModelList[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: sliderModelList.length,
      ),
    );
  }
}
