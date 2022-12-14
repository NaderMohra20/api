import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_router.dart';
import '../provider/product_providrt.dart';
import '../widgets/category_widget.dart';
import 'all_product_category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Categories".tr())),
        body: (Consumer<ProductProvidrt>(builder: (context, provider, x) {
          return provider.categoryise.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  shrinkWrap: true,
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
                          provider.getAllCategoryProducts(
                              provider.categoryise[index].id.toString());
                          AppRouter.NavigateToWidget(CategoriesproductScreen());
                        },
                        child: CategoryWidget(provider.categoryise[index]));
                  });
        })));
  }
}
