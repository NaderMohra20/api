import 'package:e_commerc_api/doi_helper.dart';
import 'package:e_commerc_api/models/posts.dart';
import 'package:e_commerc_api/models/product.dart';
import 'package:flutter/cupertino.dart';

class ProductProvidrt extends ChangeNotifier {
  ProductProvidrt() {
    // getAllProduct();
    getAllCategory();
  }
  String selectCategory = "";
  Product? selectProduct;
  List<Product>? products;
  List<String>? category;
  getAllProduct() async {
    products = await DioHelper.dioHelper.getAllProduct();
    notifyListeners();
  }

  getCategoryProduct() async {
    products = await DioHelper.dioHelper.getcategoryProduct(selectCategory);
    notifyListeners();
  }

  getAllCategory() async {
    category = await DioHelper.dioHelper.getAllcategory();
    notifyListeners();
  }

  selectedCategory(String category) {
    selectCategory = category;
    getCategoryProduct();
    notifyListeners();
  }

  selectedProduct(int id) async {
    selectProduct = await DioHelper.dioHelper.getoneProduct(id);

    notifyListeners();
  }

  creatingNewdate(Posts posts) async {
    DioHelper.dioHelper.creatingNewdate(posts);
    notifyListeners();
  }
}
