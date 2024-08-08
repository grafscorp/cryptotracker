import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CoinImage extends StatelessWidget {
  const CoinImage({super.key, required this.imageUrl, required this.size});
  final String imageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: size,
      height: size,
      imageUrl: imageUrl,
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
