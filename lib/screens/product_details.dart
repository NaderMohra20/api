import 'dart:developer';

import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerc_api/provider/card_provider.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../consts/global_colors.dart';
import '../provider/product_providrt.dart';

class ProductDetails extends StatelessWidget {
  int index;
  ProductDetails(this.index);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Consumer<ProductProvidrt>(builder: (context, provider, x) {
          return provider.selectProduct == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 18,
                      ),
                      const BackButton(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              provider.selectProduct!.category!.name.toString(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: Text(
                                    provider.selectProduct!.title.toString(),
                                    textAlign: TextAlign.start,
                                    style: titleStyle,
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: RichText(
                                    text: TextSpan(
                                        text: '\$',
                                        style: const TextStyle(
                                            fontSize: 25,
                                            color: Color.fromRGBO(
                                                33, 150, 243, 1)),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: provider
                                                  .selectProduct!.price
                                                  .toString(),
                                              style: TextStyle(
                                                  color: lightTextColor,
                                                  fontWeight: FontWeight.bold)),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.4,
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return FancyShimmerImage(
                              width: double.infinity,
                              imageUrl: provider.selectProduct!.images![index]
                                  .toString(),
                              boxFit: BoxFit.fill,
                            );
                          },

                          autoplay: true,
                          itemCount: 3,
                          pagination: const SwiperPagination(
                            alignment: Alignment.bottomCenter,
                            builder: DotSwiperPaginationBuilder(
                              color: Colors.white,
                              activeColor: Colors.red,
                            ),
                          ),
                          // control: const SwiperControl(),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Description', style: titleStyle),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    Provider.of<CartProvider>(context,
                                            listen: false)
                                        .addcart(provider.products[index]);
                                  },
                                  child: Container(
                                    color: lightIconsColor,
                                    height: size.height / 14,
                                    width: size.width / 2,
                                    child: Center(
                                        child: Text(
                                      'Add to card',
                                      style: titleStyle,
                                    )),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              provider.selectProduct!.description.toString(),
                              textAlign: TextAlign.start,
                              style: const TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
        }),
      ),
    );
  }
}
