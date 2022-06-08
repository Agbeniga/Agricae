import 'package:flutter/cupertino.dart';

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    var path = Path();
    path.lineTo(0, height * 0.5);
    path.quadraticBezierTo(width / 2, height, width, height * 0.5);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw false;
  }
}
