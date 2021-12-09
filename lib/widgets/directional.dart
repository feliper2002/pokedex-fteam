import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';
import 'package:pokedex_screen/widgets/arrow.dart';

class Directional extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Widget centerWidget;
  final Widget leftWidget;
  final Widget rightWidget;
  final Widget topWidget;
  final Widget bottomWidget;
  final Gradient gradient;
  const Directional({
    Key? key,
    this.height = 99,
    this.width = 102,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.centerWidget = const CircleAvatar(
      backgroundColor: Color(0xff182022),
      radius: 6,
    ),
    this.leftWidget = const RotatedBox(quarterTurns: 3, child: Arrow()),
    this.rightWidget = const RotatedBox(quarterTurns: 1, child: Arrow()),
    this.topWidget = const Arrow(),
    this.bottomWidget = const RotatedBox(quarterTurns: 2, child: Arrow()),
    this.gradient = AppColors.directionalGradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: ClipPath(
        clipper: _DirectionalClip(),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: gradient,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: centerWidget,
              ),
              Positioned(
                top: height * .46,
                left: width * .13,
                child: leftWidget,
              ),
              Positioned(
                top: height * .46,
                right: width * .13,
                child: rightWidget,
              ),
              Positioned(
                left: width * .46,
                top: height * .13,
                child: topWidget,
              ),
              Positioned(
                left: width * .46,
                bottom: height * .13,
                child: bottomWidget,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DirectionalClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // [horizontal] big directional rectangle
    final horizontalCenter = Offset(size.width * .5, size.height * .5);
    final horizontalRect = Rect.fromCenter(
        center: horizontalCenter, width: size.width, height: size.height * .33);

    // [vertical] big directional rectangle
    final verticalCenter = Offset(size.width * .5, size.height * .5);
    final verticalRect = Rect.fromCenter(
        center: verticalCenter, width: size.width * .33, height: size.height);

    var path = Path()
          ..moveTo(0, 0)
          ..addRect(horizontalRect)
          ..moveTo(size.height * .5, size.width * .5)
          ..addRect(verticalRect)
        //
        ;

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return this != oldClipper;
  }
}
