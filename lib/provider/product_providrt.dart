import 'package:e_commerc_api/data/doi_helper.dart';
import 'package:e_commerc_api/models/categories_model.dart';
import 'package:e_commerc_api/models/products_model.dart';
import 'package:e_commerc_api/models/users_model.dart';
import 'package:flutter/material.dart';

class ProductProvidrt extends ChangeNotifier {
  ProductProvidrt() {
    getAllProduct();
    getAllUsers();
  }
  TextEditingController searchController = TextEditingController();

  String selectCategory = "";
  ProductsModel? selectProduct;
  List<ProductsModel> products = [];
  List<CategoriesModel> categoryise = [];
  List<UsersModel> users = [];
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

  getCategoryProduct() async {
    products = await DioHelper.dioHelper.getcategoryProduct(selectCategory);
    notifyListeners();
  }

  getAllUsers() async {
    users = await DioHelper.dioHelper.getAllUsers();
    notifyListeners();
  }

  // getCategoryProduct() async {
  //   products = await DioHelper.dioHelper.getcategoryProduct(selectCategory);
  //   notifyListeners();
  // }

  // getAllCategory() async {
  //   category = await DioHelper.dioHelper.getAllcategory();
  //   notifyListeners();
  // }

  // selectedCategory(String category) {
  //   selectCategory = category;
  //   getCategoryProduct();
  //   notifyListeners();
  // }

  // selectedProduct(int id) async {
  //   selectProduct = await DioHelper.dioHelper.getoneProduct(id);

  //   notifyListeners();
  // }

  // creatingNewdate(Posts posts) async {
  //   DioHelper.dioHelper.creatingNewdate(posts);
  //   notifyListeners();
  // }
}
