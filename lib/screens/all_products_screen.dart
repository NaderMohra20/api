import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_router.dart';
import '../provider/product_providrt.dart';
import '../widgets/all_product_widget.dart';
import '../widgets/product_widget.dart';
import 'product_details.dart';

class AllProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 4,
        title: const Text('All Products'),
      ),
      body: Consumer<ProductProvidrt>(builder: (context, provider, x) {
        return provider.products.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: provider.products.length,
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
                      child: ALLProductWidget(provider.products[index], index));
                });
      }),
    );
  }
}
