import 'package:elevate_task/features/home/presentation/views/widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing:15,mainAxisSpacing: 25 ),
        itemBuilder: (BuildContext context, int index) {
          return ProductWidget();
        },itemCount: 10,

      ),
    );
  }
}
