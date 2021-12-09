import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

class TopSide extends StatelessWidget {
  final double height;
  final double width;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final Color color;
  const TopSide({
    Key? key,
    this.height = 144,
    this.width = 375,
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
      child: ClipPath(
        clipper: _TopClip(),
        child: Container(
          height: height,
          width: width,
          color: color,
        ),
      ),
    );
  }
}

class _TopClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // final insideRectangle = Rect.fromLTWH(
    //   size.width * .576,
    //   size.height * .47,
    //   size.width * .36,
    //   size.height * .53,
    // );

    // final roundedRect = RRect.fromRectAndCorners(insideRectangle,
    //     topLeft: const Radius.circular(10));

    var path = Path()
          ..moveTo(0, 0)
          ..lineTo(0, size.height)
          ..lineTo(size.width * .41, size.height)
          ..lineTo(size.width * .57, size.height * .5)
          ..quadraticBezierTo(
            size.width * .586,
            size.height * .47,
            size.width * .6,
            size.height * .47,
          )
          ..lineTo(size.width * 93, size.height * .47)
          ..lineTo(size.width * .93, size.height)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, 0)
        // ..addRRect(roundedRect)
        // ..moveTo(size.width * .576, size.height * .47)
        //
        ;
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return this != oldClipper;
  }
}
