import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

class TopHinge extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  const TopHinge({
    Key? key,
    this.height = 83,
    this.width = 34,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = AppColors.topBorder,
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
        decoration: BoxDecoration(
          color: color,
          borderRadius:
              BorderRadius.only(topLeft: Radius.circular(width * .44)),
        ),
      ),
    );
  }
}
