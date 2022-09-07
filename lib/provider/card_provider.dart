import 'package:flutter/cupertino.dart';

import '../models/products_model.dart';

class CartProvider extends ChangeNotifier {
  List<ProductsModel> cardProducts = [];
  addcart(ProductsModel productsModel) {
    cardProducts.add(productsModel);
    notifyListeners();
  }

  int get count {
    return cardProducts.length;
  }

  deletecart(ProductsModel productsModel) {
    cardProducts.remove(productsModel);
    notifyListeners();
  }
}
