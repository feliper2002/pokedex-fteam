import 'package:flutter/material.dart';
import 'package:pokedex_screen/colors/colors.dart';

class Directional extends StatelessWidget {
  final double height;
  final double width;
  const Directional({
    Key? key,
    this.height = 99,
    this.width = 102,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DirectionalClip(),
      child: Container(
        height: height,
        width: width,
      ),
    );
  }
}

class DirectionalClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
        //
        ;

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return this != oldClipper;
  }
}
