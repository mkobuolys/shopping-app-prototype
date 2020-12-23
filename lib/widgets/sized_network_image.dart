import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:shopping_app_prototype/widgets/widgets.dart';

class SizedNetworkImage extends StatelessWidget {
  const SizedNetworkImage({
    @required this.imageUrl,
    @required this.imageWidth,
  });

  final String imageUrl;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: imageWidth,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (_, __) => CircularLoader(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
