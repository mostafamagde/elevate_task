import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 250,
      width: 170,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20),
        border: Border.all(color: Colors.black)

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.red,

              ),
              Positioned(child: Icon(Icons.account_balance))
            ],
          ),
          Text("ddjvbknv"),
          Text("1200"),
          Row(
            children: [
              Text("ddjvjfknv"),
              Icon(Icons.star),
              Spacer(),
              Icon(Icons.account_balance)
            ],
          ),

        ],
      ),
    );
  }
}
