import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/screens/details/components/product_tile_with_image.dart';

import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_button.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  // height: 500,
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadiing,
                    right: kDefaultPadiing,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultPadiing / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: kDefaultPadiing / 2,
                      ),
                      CounterWithFavButton(),
                      SizedBox(
                        height: kDefaultPadiing / 2,
                      ),
                      AddToCard(product: product)
                    ],
                  ),
                ),
                ProductTileWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
