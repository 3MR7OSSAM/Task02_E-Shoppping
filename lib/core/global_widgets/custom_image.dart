import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final isValidUrl = Uri.tryParse(imageUrl)?.hasAbsolutePath ?? false;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: isValidUrl
              ? CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.contain,
                  errorWidget: (context, url, error) => const Center(
                    child: Text(
                      "Can't Load Image",
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : const Center(
                  child: Text(
                    "Invalid Image URL",
                    textAlign: TextAlign.center,
                  ),
                ),
        ),
      ),
    );
  }
}
