import 'package:flutter/material.dart';

class CustomItemImage extends StatelessWidget {
  final String pathAsset;

  const CustomItemImage({super.key, required this.pathAsset});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset(
          pathAsset,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
