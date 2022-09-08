import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/product_providrt.dart';
import '../widgets/all_product_widget.dart';
import '../widgets/product_widget.dart';

class CategoriesproductScreen extends StatelessWidget {
  const CategoriesproductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Categories product".tr())),
        body: (Consumer<ProductProvidrt>(builder: (context, provider, x) {
          return provider.categoryiseProducts.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  shrinkWrap: true,
                  itemCount: provider.categoryiseProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          // provider.getCategoryProduct();
                          // AppRouter.NavigateToWidget(widget);
                        },
                        child: ProductWidget(
                            provider.categoryiseProducts[index], index));
                  });
        })));
  }
}
