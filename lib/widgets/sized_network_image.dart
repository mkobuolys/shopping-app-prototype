import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import 'package:shopping_app_prototype/widgets/circular_loader.dart';

class SizedNetworkImage extends StatelessWidget {
  const SizedNetworkImage({
    @required this.imageUrl,
    @required this.imageWidth,
    this.cacheManager,
  });

  final BaseCacheManager cacheManager;
  final String imageUrl;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: imageWidth,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: CachedNetworkImage(
          cacheManager: cacheManager,
          imageUrl: imageUrl,
          placeholder: (_, __) => const CircularLoader(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
