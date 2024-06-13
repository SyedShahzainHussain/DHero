
import 'package:dhero/view/on_board_screen/on_board_screen.dart';
import 'package:flutter/material.dart';

import '../../../config/colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i <= sliderModelList.length - 1; i++)
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 0 == i ? 20 : 5,
            height: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color:
                  0 == i ? AppColors.cherryRed : AppColors.grayRed,
            ),
          ),
      ],
    );
  }
}