import 'package:elevate_task/features/home/data/models/product_model.dart';
import 'package:elevate_task/features/home/presentation/views/widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key, required this.productList});

  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 50,childAspectRatio: 3/4),
        itemBuilder: (BuildContext context, int index) {
          return ProductWidget(product: productList[index],);
        },
        itemCount: productList.length,
      ),
    );
  }
}
