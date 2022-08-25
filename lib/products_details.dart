import 'package:e_commerc_api/models/product.dart';
import 'package:e_commerc_api/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvidrt>(builder: (context, Provider, x) {
      return Scaffold(
        appBar: AppBar(),
        body: Provider.selectProduct == null
            ? SizedBox()
            : Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.network(Provider.selectProduct!.image ?? ""),
                  ),
                  Text(Provider.selectProduct!.title ?? ""),
                  Text(Provider.selectProduct!.description ?? ""),
                  Text(Provider.selectProduct!.price.toString()),
                ],
              ),
      );
    });
  }
}
