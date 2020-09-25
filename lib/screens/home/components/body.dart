import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/home/components/categories.dart';

import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadiing),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadiing,
            ),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: kDefaultPadiing,
                crossAxisSpacing: kDefaultPadiing,
                crossAxisCount: 2,
                childAspectRatio: 0.70,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
