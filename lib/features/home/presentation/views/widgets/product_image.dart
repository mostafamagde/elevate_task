import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../data/models/product_model.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 3 / 1.8,
          child: ClipRRect(
            borderRadius:  BorderRadius.circular(20),
            child: CachedNetworkImage(
              imageUrl: product.image!,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                color: Colors.red,
              ),
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
            ),
          ),
        ),
        const Positioned(
          width: 350,
          height: 50,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 15,
            child: Icon(Icons.favorite_border),
          ),
        )
      ],
    );
  }
}
