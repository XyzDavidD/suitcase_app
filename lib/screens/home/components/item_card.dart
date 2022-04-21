import 'package:flutter/material.dart';
import 'package:suitcase_app/constants.dart';
import 'package:suitcase_app/models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
                padding: const EdgeInsets.all(kDefaultPaddin),
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: .5,
                      blurRadius: 6,
                      offset: Offset(1, 3), // changes position of shadow
                    ),
                  ],
                  color: product.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                    tag: "${product.id}", child: Image.asset(product.image))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "€${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
