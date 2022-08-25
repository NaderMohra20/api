import 'package:e_commerc_api/doi_helper.dart';
import 'package:e_commerc_api/products_details.dart';
import 'package:e_commerc_api/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  String currentId = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
        ),
        body: Consumer<ProductProvidrt>(builder: ((context, provider, x) {
          return Column(
            children: [
              provider.category == null
                  ? const SizedBox()
                  : SizedBox(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: provider.category?.length ?? 0,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                provider.selectedCategory(
                                    provider.category![index]);
                              },
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: provider.category![index] ==
                                            provider.selectCategory
                                        ? Colors.red
                                        : Colors.blue),
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: SizedBox(
                                  child: Text(
                                    provider.category?[index] ?? "",
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
              provider.products == null
                  ? SizedBox()
                  : Expanded(
                      child: ListView.builder(
                          itemCount: provider.products!.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                provider.selectedProduct(
                                    provider.products![index].id!);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductDetails()),
                                );
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.network(
                                        provider.products![index].image!),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(provider.products![index].title!),
                                        Text(
                                          provider
                                              .products![index].description!,
                                          maxLines: 1,
                                        ),
                                        Text(provider.products![index].price!
                                            .toString()),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    )
            ],
          );
        })));
  }
}
