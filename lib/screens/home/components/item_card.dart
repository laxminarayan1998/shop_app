import 'package:flutter/material.dart';
import 'package:shop_app/models/products.dart';

import '../../../constant.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({Key key, this.press, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadiing),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadiing / 4),
            child: Text(
              product.title,
              style: TextStyle(
                color: kTextColor,
              ),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
