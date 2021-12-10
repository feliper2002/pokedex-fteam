import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

enum HingeType { top, bottom }

class ExtremeHinge extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  final HingeType type;
  const ExtremeHinge({
    Key? key,
    this.height = 83,
    this.width = 34,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.color = AppColors.topBorder,
    this.type = HingeType.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry borderRadius;

    switch (type) {
      case HingeType.top:
        borderRadius = BorderRadius.only(topLeft: Radius.circular(width * .44));
        break;
      case HingeType.bottom:
        borderRadius =
            BorderRadius.only(bottomLeft: Radius.circular(width * .44));

        break;
      default:
        borderRadius = BorderRadius.only(topLeft: Radius.circular(width * .44));
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
          color: color,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
