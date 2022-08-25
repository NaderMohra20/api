import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_commerc_api/models/posts.dart';
import 'package:e_commerc_api/models/product.dart';

class DioHelper {
  DioHelper._();
  static DioHelper dioHelper = DioHelper._();
  Dio dio = Dio();
  Future<List<Product>> getAllProduct() async {
    Response response = await dio.get('https://fakestoreapi.com/products');
    List responseList = response.data;
    List<Product> products = responseList.map((e) {
      return Product.fromJson(e);
    }).toList();
    return products;
  }

  Future<List<String>> getAllcategory() async {
    Response response =
        await dio.get('https://fakestoreapi.com/products/categories');
    List cat = response.data;
    List<String> category = cat.map((e) => e.toString()).toList();
    return category;
  }

  Future<List<Product>> getcategoryProduct(String n) async {
    Response response =
        await dio.get('https://fakestoreapi.com/products/category/$n');
    List responseList = response.data;
    List<Product> products = responseList.map((e) {
      return Product.fromJson(e);
    }).toList();
    return products;
  }

  Future<Product> getoneProduct(int n) async {
    Response response = await dio.get('https://fakestoreapi.com/products/$n');
    return Product.fromJson(response.data);
  }

  creatingNewdate(Posts posts) async {
    Response response = await dio.post(
        'https://jsonplaceholder.typicode.com/posts',
        data: posts.toMap());
    log(response.statusCode.toString());
  }
}
