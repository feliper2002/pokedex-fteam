import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

enum LedType { red, green, yellow }

class Led extends StatelessWidget {
  final Gradient gradient;
  final double size;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final LedType type;
  const Led({
    Key? key,
    this.gradient = AppColors.redGradient,
    this.size = 12,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.type = LedType.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Gradient ledGradient;

    switch (type) {
      case LedType.red:
        ledGradient = gradient;
        break;
      case LedType.green:
        ledGradient = AppColors.greenGradient;
        break;
      case LedType.yellow:
        ledGradient = AppColors.yellowGradient;
        break;
      default:
        ledGradient = gradient;
    }

    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          gradient: ledGradient,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
