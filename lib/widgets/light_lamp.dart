import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

class LightLamp extends StatelessWidget {
  final Gradient smallCircleGradient;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final double size;
  const LightLamp({
    Key? key,
    this.smallCircleGradient = AppColors.gradientSmallCircle,
    this.top = 20,
    this.bottom,
    this.left = 19,
    this.right,
    this.size = 88,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size * .15,
      width: size * .15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: smallCircleGradient,
      ),
    );
  }
}
