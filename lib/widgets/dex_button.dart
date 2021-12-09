import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

enum ButtonType { start, select }

class DexButton extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  final Color borderColor;
  final ButtonType type;

  const DexButton({
    Key? key,
    this.height = 8,
    this.width = 37,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = AppColors.startButton,
    this.borderColor = AppColors.startButtonBorder,
    this.type = ButtonType.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color borderColor;

    switch (type) {
      case ButtonType.start:
        backgroundColor = color;
        borderColor = this.borderColor;
        break;
      case ButtonType.select:
        backgroundColor = AppColors.selectButton;
        borderColor = AppColors.selectButtonBorder;
        break;
      default:
        backgroundColor = color;
        borderColor = this.borderColor;
    }

    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(width * .074),
          color: backgroundColor,
          border: Border.all(width: (width * .027), color: borderColor),
        ),
      ),
    );
  }
}
