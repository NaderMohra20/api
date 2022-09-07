import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/product_providrt.dart';
import '../widgets/category_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Categories")),
        body: (Consumer<ProductProvidrt>(builder: (context, provider, x) {
          return provider.categoryise.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: provider.categoryise.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                    childAspectRatio: 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          // provider.getCategoryProduct();
                          // AppRouter.NavigateToWidget(widget);
                        },
                        child: CategoryWidget(provider.categoryise[index]));
                  });
        })));
  }
}
