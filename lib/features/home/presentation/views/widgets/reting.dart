import 'package:flutter/material.dart';

import '../../../data/models/product_model.dart';

class Reting extends StatelessWidget {
  const Reting({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Text(product.rating!.rate!.toString()),
        const SizedBox(width: 5,),
        Text("(${product.rating!.count!})",style: const TextStyle(
            color: Colors.grey,fontSize: 12
        ),),
        const SizedBox(width: 5,),
        const Icon(Icons.star,color: Colors.yellow,),
        const Spacer(),
        const CircleAvatar(backgroundColor: Colors.blue,radius: 15,child: Icon(Icons.add,color: Colors.white,),),
        const SizedBox(width: 5,),
      ],
    );
  }
}
