import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

class ScreenButton extends StatelessWidget {
  final double size;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  const ScreenButton({
    Key? key,
    this.size = 16,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = AppColors.screenButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: CircleAvatar(
        backgroundColor: color,
        radius: (size * .5),
      ),
    );
  }
}
