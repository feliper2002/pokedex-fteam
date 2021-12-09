import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

class GreenButton extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  final Color borderColor;
  const GreenButton({
    Key? key,
    this.height = 54,
    this.width = 99,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = AppColors.greenButtonBackground,
    this.borderColor = AppColors.greenButtonBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: width * .0101, color: borderColor),
          borderRadius: BorderRadius.circular(width * .1515),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(width * .1313),
          ),
        ),
      ),
    );
  }
}
