import 'package:flutter/material.dart';

class ImagePlaceholder extends StatelessWidget {
  final String imagePath;
  const ImagePlaceholder({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'lib/images/thumneil.webp',
      fit: BoxFit.cover,
    );
  }
}
