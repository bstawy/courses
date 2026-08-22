import 'package:flutter/material.dart';

class HiringProjectCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double radius = 26;
    const double cutoutWidth = 115.0;
    const double cutoutHeight = 45.0;

    Path path = Path();

    // Start at top-left
    path.moveTo(radius, 0);
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);

    // Right edge
    path.lineTo(size.width, size.height - radius);
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - radius,
      size.height,
    );

    // Bottom edge towards the notch
    path.lineTo(cutoutWidth + radius, size.height);

    // Bottom-right inner corner of cutout
    path.quadraticBezierTo(
      cutoutWidth,
      size.height,
      cutoutWidth,
      size.height - radius,
    );

    // Inner vertical line going up
    path.lineTo(cutoutWidth, size.height - cutoutHeight + radius);

    // Top-right inner corner of cutout
    path.quadraticBezierTo(
      cutoutWidth,
      size.height - cutoutHeight,
      cutoutWidth - radius,
      size.height - cutoutHeight,
    );

    // Inner horizontal line going left
    path.lineTo(radius, size.height - cutoutHeight);

    // Left inner corner of cutout
    path.quadraticBezierTo(
      0,
      size.height - cutoutHeight,
      0,
      size.height - cutoutHeight - radius,
    );

    // Top-left edge going back up
    path.lineTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
