import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedImage extends StatelessWidget {
  const CustomCachedImage({
    super.key,
    required this.imageUrl, required this.aspectRation,
  });

  final String imageUrl;
  final double aspectRation;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: aspectRation,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.error), Text('image not found')]),
          )),
    );
  }
}
