import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

class HingeSmallRectangle extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  const HingeSmallRectangle({
    Key? key,
    this.height = 5,
    this.width = 34,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = AppColors.topBorderShadow,
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
        color: color,
      ),
    );
  }
}
