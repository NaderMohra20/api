import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/favorite_screen.dart';
import '../widgets/cart_widget.dart';
import '../widgets/favorite_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorite".tr())),
      body: Consumer<FavoriteProvider>(builder: (context, provider, x) {
        return provider.favoriteProducts.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: provider.favoriteProducts.length,
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
                      child: FavoriteWidget(provider.favoriteProducts[index]));
                });
      }),
    );
  }
}
