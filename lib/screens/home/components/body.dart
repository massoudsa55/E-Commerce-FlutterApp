import 'package:e_commerce_ui_app/constants.dart';
import 'package:e_commerce_ui_app/models/product.dart';
import 'package:flutter/material.dart';
import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: eDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Woman',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Categorries(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: eDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: eDefaultPaddin,
                crossAxisSpacing: eDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) =>
                  ItemCard(product: products[index], press: () {}),
            ),
          )),
        ],
      ),
    );
  }
}
