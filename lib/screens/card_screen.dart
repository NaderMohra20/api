import 'package:e_commerc_api/provider/card_provider.dart';
import 'package:e_commerc_api/provider/product_providrt.dart';
import 'package:e_commerc_api/widgets/users_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/cart_widget.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card")),
      body: Consumer<CartProvider>(builder: (context, provider, x) {
        return provider.cardProducts.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: provider.cardProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                    childAspectRatio: 0.7),
                itemBuilder: (context, index) {
                  return InkWell(
                      // onTap: () {
                      //   provider.selectedProduct(provider.products[index].id!);
                      //   AppRouter.NavigateToWidget(ProductDetails());
                      // },
                      child: cartWidget(provider.cardProducts[index]));
                });
      }),
    );
  }
}
