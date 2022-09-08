import 'package:e_commerc_api/data/doi_helper.dart';
import 'package:e_commerc_api/models/categories_model.dart';
import 'package:e_commerc_api/models/products_model.dart';

import 'package:flutter/material.dart';

class ProductProvidrt extends ChangeNotifier {
  ProductProvidrt() {
    getAllProduct();
  }
  TextEditingController searchController = TextEditingController();

  String selectFavorite = "";
  ProductsModel? selectProduct;
  List<ProductsModel> products = [];
  List<CategoriesModel> categoryise = [];
  List<ProductsModel> categoryiseProducts = [];

  getAllProduct() async {
    products = await DioHelper.dioHelper.getAllProduct();
    notifyListeners();
  }

  selectedProduct(int id) async {
    selectProduct = await DioHelper.dioHelper.getoneProduct(id);

    notifyListeners();
  }

  getAllCategory() async {
    categoryise = await DioHelper.dioHelper.getAllcategory();
    notifyListeners();
  }

  getAllCategoryProducts(String n) async {
    categoryiseProducts = await DioHelper.dioHelper.getcategoryProduct(n);
    notifyListeners();
  }

  // getCategoryProduct() async {
  //   products = await DioHelper.dioHelper.getcategoryProduct(selectCategory);
  //   notifyListeners();
  // }

  // getCategoryProduct() async {
  //   products = await DioHelper.dioHelper.getcategoryProduct(selectCategory);
  //   notifyListeners();
  // }

  // getAllCategory() async {
  //   category = await DioHelper.dioHelper.getAllcategory();
  //   notifyListeners();
  // }

  selectedfavorite(ProductsModel favorite) {
    selectFavorite = favorite.toString();

    notifyListeners();
  }

  // selectedProduct(int id) async {
  //   selectProduct = await DioHelper.dioHelper.getoneProduct(id);

  //   notifyListeners();
  // }

  // creatingNewdate(Posts posts) async {
  //   DioHelper.dioHelper.creatingNewdate(posts);
  //   notifyListeners();
  // }
}
