import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerc_api/app_router.dart';
import 'package:e_commerc_api/consts/global_colors.dart';
import 'package:e_commerc_api/provider/card_provider.dart';
import 'package:e_commerc_api/screens/all_products_screen.dart';
import 'package:e_commerc_api/screens/categories_screen.dart';

import 'package:e_commerc_api/screens/card_screen.dart';
import 'package:e_commerc_api/widgets/sale_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:provider/provider.dart';

import '../provider/product_providrt.dart';
import '../widgets/appbar_icons.dart';
import '../widgets/product_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            // elevation: 4,
            title: Text('Home'.tr()),
            leading: AppBarIcons(
              function: () {
                Provider.of<ProductProvidrt>(context, listen: false)
                    .getAllCategory();
                AppRouter.NavigateToWidget(const CategoriesScreen());
              },
              icon: IconlyBold.category,
            ),
            actions: [
              Row(
                children: [
                  AppBarIcons(
                    function: () {
                      AppRouter.NavigateToWidget(CardScreen());
                    },
                    icon: Icons.add_shopping_cart,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Consumer<CartProvider>(
                          builder: ((context, provider, child) {
                        return Text(
                          provider.count.toString(),
                          style: TextStyle(color: lightIconsColor),
                        );
                      })))
                ],
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                // TextField(
                //   controller:
                //       Provider.of<ProductProvidrt>(context).searchController,
                //   keyboardType: TextInputType.text,
                //   decoration: InputDecoration(
                //       hintText: "Search",
                //       filled: true,
                //       fillColor: Theme.of(context).cardColor,
                //       enabledBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //         borderSide: BorderSide(
                //           color: Theme.of(context).cardColor,
                //         ),
                //       ),
                //       focusedBorder: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //         borderSide: BorderSide(
                //           width: 1,
                //           color: Theme.of(context).colorScheme.secondary,
                //         ),
                //       ),
                //       suffixIcon: Icon(
                //         IconlyLight.search,
                //         color: lightIconsColor,
                //       )),
                // ),
                const SizedBox(
                  height: 18,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: Swiper(
                          itemCount: 3,
                          itemBuilder: (ctx, index) {
                            return const SaleWidget();
                          },
                          autoplay: true,
                          pagination: const SwiperPagination(
                              alignment: Alignment.bottomCenter,
                              builder: DotSwiperPaginationBuilder(
                                  color: Colors.white,
                                  activeColor: Colors.red)),
                          // control: const SwiperControl(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Latest Products".tr(),
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            const Spacer(),
                            AppBarIcons(
                                function: () {
                                  AppRouter.NavigateToWidget(
                                      AllProductsScreen());
                                },
                                icon: IconlyBold.arrowRight2),
                          ],
                        ),
                      ),
                      Provider.of<ProductProvidrt>(context).products.isEmpty
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : GridView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 0.0,
                                      mainAxisSpacing: 0.0,
                                      childAspectRatio: 0.6),
                              itemBuilder: (ctx, index) {
                                return InkWell(
                                  // onTap: () {
                                  //   Provider.of<ProductProvidrt>(context,
                                  //           listen: false)
                                  //       .selectedProduct(
                                  //           Provider.of<ProductProvidrt>(
                                  //                   context,
                                  //                   listen: false)
                                  //               .products[index]
                                  //               .id!);
                                  //   AppRouter.NavigateToWidget(
                                  //       ProductDetails());
                                  // },
                                  child: ProductWidget(
                                      Provider.of<ProductProvidrt>(context)
                                          .products[index],
                                      index),
                                );
                              })
                    ]),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class Data {}
