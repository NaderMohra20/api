import 'package:e_commerc_api/provider/card_provider.dart';
import 'package:e_commerc_api/provider/favorite_screen.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

import '../consts/global_colors.dart';
import '../models/products_model.dart';
import '../provider/product_providrt.dart';

class FavoriteWidget extends StatelessWidget {
  ProductsModel productsModel;

  // ignore: use_key_in_widget_constructors
  FavoriteWidget(this.productsModel);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<FavoriteProvider>(builder: (context, provider, x) {
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                          text: '\$',
                          style: const TextStyle(
                              color: Color.fromRGBO(33, 150, 243, 1)),
                          children: <TextSpan>[
                            TextSpan(
                                text: "${productsModel.price}",
                                style: TextStyle(
                                    color: lightTextColor,
                                    fontWeight: FontWeight.w600)),
                          ]),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        provider.deletefavorite(productsModel);
                      },
                      icon: const Icon(IconlyBold.delete)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FancyShimmerImage(
                  height: size.height * 0.2,
                  width: double.infinity,
                  errorWidget: const Icon(
                    IconlyBold.danger,
                    color: Colors.red,
                    size: 28,
                  ),
                  imageUrl: productsModel.images![0],
                  boxFit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                productsModel.title.toString(),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 17,
                  //  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
          ],
        ),
      );
    });
  }
}
