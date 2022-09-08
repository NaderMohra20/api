import 'package:flutter/cupertino.dart';

import '../models/products_model.dart';

class FavoriteProvider extends ChangeNotifier {
  List<ProductsModel> favoriteProducts = [];
  addfavorite(ProductsModel productsModel) {
    favoriteProducts.add(productsModel);
    notifyListeners();
  }

  int get count {
    return favoriteProducts.length;
  }

  deletefavorite(ProductsModel productsModel) {
    favoriteProducts.remove(productsModel);
    notifyListeners();
  }
}
