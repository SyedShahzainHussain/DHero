import 'package:flutter/material.dart';

import '../colors.dart';

class AnimatedCircularProdgressIndicator extends StatelessWidget {
  final double percentage;
  const AnimatedCircularProdgressIndicator(
      {super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: 110,
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: const Duration(milliseconds: 700),
        builder: (context, value, child) {
          return CircularProgressIndicator(
            value: value,
            strokeWidth: 8.0,
            valueColor: const AlwaysStoppedAnimation(AppColors.cherryRed),
          );
        },
      ),
    );
  }
}
