import 'package:dhero/bloc/on_board_bloc/on_board_bloc.dart';
import 'package:dhero/config/components/animated_progress_indicator.dart';
import 'package:dhero/utils/image_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StackLogo extends StatelessWidget {
  const StackLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        BlocBuilder<OnBoardBloc, OnBoardState>(
          builder: (context, state) {
            return AnimatedCircularProdgressIndicator(
              percentage: state.currentIndex == 0 ? 0.5 : 1.0,
            );
          },
        ),
        Image.asset(
          SImageString.dHero,
          height: 100,
          width: 95,
        ),
      ],
    );
  }
}
