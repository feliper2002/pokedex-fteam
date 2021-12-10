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
    this.height = 156,
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
        clipper: _TopClipShadow(),
        child: Container(
          height: height,
          width: width,
          color: AppColors.topBorderShadow,
          child: ClipPath(
            clipper: _TopClip(),
            child: Container(
              height: height,
              width: width,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}

class _TopClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
          ..moveTo(0, 0)
          ..lineTo(0, size.height * .92)
          ..lineTo(size.width * .41, size.height * .92)
          ..lineTo(size.width * .57, size.height * .46)
          // rounded corner
          ..quadraticBezierTo(
            size.width * .586,
            size.height * .43,
            size.width * .6,
            size.height * .43,
          )
          ..lineTo(size.width * .93, size.height * .43)
          ..lineTo(size.width * .93, size.height * .92)
          ..lineTo(size.width, size.height * .92)
          ..lineTo(size.width, 0)
        //
        ;
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return this != oldClipper;
  }
}

class _TopClipShadow extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
          ..moveTo(0, 0)
          ..lineTo(0, size.height)
          ..lineTo(size.width * .43, size.height)
          ..lineTo(size.width * .6, size.height * .53)
          ..lineTo(size.width * .9, size.height * .53)
          ..lineTo(size.width * .9, size.height)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, 0)
        //
        ;
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return this != oldClipper;
  }
}
