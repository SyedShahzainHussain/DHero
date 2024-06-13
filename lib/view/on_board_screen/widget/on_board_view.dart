import 'package:dhero/view/on_board_screen/on_board_screen.dart';
import 'package:dhero/utils/extension/general_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/on_board_bloc/on_board_bloc.dart';

class OnBoardView extends StatelessWidget {
  final PageController pageController;
  const OnBoardView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.mediaQueryHeight / 2,
      width: context.mediaQueryWidth,
      child: BlocBuilder<OnBoardBloc, OnBoardState>(
        builder: (context, state) {
          return PageView.builder(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (pageIndex) {
              context.read<OnBoardBloc>().add(ChangePageIndex(pageIndex));
            },
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
          );
        },
      ),
    );
  }
}
