import 'package:flutter/material.dart';

class Arrow extends StatelessWidget {
  const Arrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _ButtonIconClip(),
      child: Container(
        height: 8,
        width: 10,
        color: const Color(0xff182022),
      ),
    );
  }
}

class _ButtonIconClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.addPolygon([
      Offset(0, size.height),
      Offset(size.width / 2, 0),
      Offset(size.width, size.height)
    ], true);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return this != oldClipper;
  }
}
