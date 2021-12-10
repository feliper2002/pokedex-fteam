import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

class Lamp extends StatelessWidget {
  final double size;
  final Color borderColor;
  final Color backColor;
  final Gradient bigCircleGradient;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Widget? lightWidget;
  const Lamp({
    Key? key,
    this.size = 88,
    this.borderColor = AppColors.lampBorder,
    this.backColor = AppColors.lampFrame,
    this.bigCircleGradient = AppColors.gradientBigCircle,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.lightWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: size,
        width: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.lampFrame,
          shape: BoxShape.circle,
          border: Border.all(color: borderColor, width: (size * .011)),
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            alignment: const Alignment(-.38, -.29),
            height: constraints.maxHeight * .77,
            width: constraints.maxWidth * .77,
            decoration: BoxDecoration(
              gradient: bigCircleGradient,
              shape: BoxShape.circle,
            ),
            child: lightWidget!,
          );
        }),
      ),
    );
  }
}
