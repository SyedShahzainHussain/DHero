import 'package:dhero/view/on_board_screen/on_board_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/on_board_bloc/on_board_bloc.dart';
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
          BlocBuilder<OnBoardBloc, OnBoardState>(
            builder: (context, state) {
              return Container(
                margin: const EdgeInsets.only(right: 10),
                width: state.currentIndex == i ? 20 : 5,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: state.currentIndex == i
                      ? AppColors.cherryRed
                      : AppColors.grayRed,
                ),
              );
            },
          ),
      ],
    );
  }
}
