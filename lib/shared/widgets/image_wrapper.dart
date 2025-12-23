import 'package:flutter/material.dart';

class ImageWrapper extends StatelessWidget {
  const ImageWrapper({
    super.key,
    required this.imagePath,
    this.width = 150,
    this.height = 150,
  });

  final String imagePath;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath, width: width, height: height, );
  }
}
