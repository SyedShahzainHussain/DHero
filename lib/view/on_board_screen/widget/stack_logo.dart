import 'package:dhero/config/components/animated_progress_indicator.dart';
import 'package:dhero/utils/image_string.dart';
import 'package:flutter/material.dart';

class StackLogo extends StatelessWidget {
  const StackLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const AnimatedCircularProdgressIndicator(
          percentage: 0.5,
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
