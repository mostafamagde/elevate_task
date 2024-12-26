import 'package:elevate_task/features/home/data/models/product_model.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_image.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/reting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImage(product: product,),
          const Divider(
            color: Colors.black,
            thickness: 1.5,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title!,
                    overflow: TextOverflow.fade,
                  ),
                  Text(
                    "${product.price!.toString()} EGP",
                    overflow: TextOverflow.fade,
                  ),
                  Reting(product: product,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
