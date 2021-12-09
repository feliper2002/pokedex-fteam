import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

class Screen extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  const Screen({
    Key? key,
    this.height = 163,
    this.width = 235,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = AppColors.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(width * .043),
      ),
    );
  }
}
