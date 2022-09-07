import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_commerc_api/models/categories_model.dart';
import 'package:e_commerc_api/models/users_model.dart';

import '../models/products_model.dart';

class DioHelper {
  DioHelper._();
  static DioHelper dioHelper = DioHelper._();
  Dio dio = Dio();
  // Future<List<ProductsModel>> getAllProduct([int page = 0]) async {
  //   Response response =
  //       await dio.get("https://api.escuelajs.co/api/v1/products",
  //           queryParameters: {"offset": 10, "limit": page},
  //           options: Options(headers: {
  //             "Authorization":
  //                 "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImpvaG5AbWFpbC5jb20iLCJzdWIiOjEsImlhdCI6MTY0Nzg3NTY5MywiZXhwIjoxNjQ3ODc5MjkzfQ.yrPEqd3YEgmxwEXq3SFy33bhV2jcIKc8BMGZfwuWyHM "
  //           }));

  //   List responseList = response.data;
  //   List<ProductsModel> products = responseList.map((e) {
  //     return ProductsModel.fromJson(e);
  //   }).toList();
  //   return products;
  // }

  Future<List<ProductsModel>> getAllProduct() async {
    Response response =
        await dio.get('https://api.escuelajs.co/api/v1/products');
    List responseList = response.data;
    List<ProductsModel> products = responseList.map((e) {
      return ProductsModel.fromJson(e);
    }).toList();
    return products;
  }

  Future<ProductsModel> getoneProduct(int n) async {
    Response response =
        await dio.get('https://api.escuelajs.co/api/v1/products/$n');
    return ProductsModel.fromJson(response.data);
  }

  Future<List<CategoriesModel>> getAllcategory() async {
    Response response =
        await dio.get('https://api.escuelajs.co/api/v1/categories');
    List cat = response.data;
    List<CategoriesModel> category =
        cat.map((e) => CategoriesModel.fromJson(e)).toList();
    return category;
  }

  Future<List<ProductsModel>> getcategoryProduct(String n) async {
    Response response =
        await dio.get('https://api.escuelajs.co/api/v1/categories/$n/products');
    List responseList = response.data;
    List<ProductsModel> products = responseList.map((e) {
      return ProductsModel.fromJson(e);
    }).toList();
    return products;
  }

  Future<List<UsersModel>> getAllUsers() async {
    Response response = await dio.get('https://api.escuelajs.co/api/v1/users');
    List responseList = response.data;
    List<UsersModel> users = responseList.map((e) {
      return UsersModel.fromJson(e);
    }).toList();
    return users;
  }

  // Future<List<String>> getAllcategory() async {
  //   Response response =
  //       await dio.get('https://fakestoreapi.com/products/categories');
  //   List cat = response.data;
  //   List<String> category = cat.map((e) => e.toString()).toList();
  //   return category;
  // }

  // Future<List<ProductsModel>> getcategoryProduct(String n) async {
  //   Response response =
  //       await dio.get('https://fakestoreapi.com/products/category/$n');
  //   List responseList = response.data;
  //   List<ProductsModel> products = responseList.map((e) {
  //     return ProductsModel.fromJson(e);
  //   }).toList();
  //   return products;
  // }

  // Future<ProductsModel> getoneProduct(int n) async {
  //   Response response = await dio.get('https://fakestoreapi.com/products/$n');
  //   return ProductsModel.fromJson(response.data);
  // }

  // creatingNewdate(Posts posts) async {
  //   Response response = await dio.post(
  //       'https://jsonplaceholder.typicode.com/posts',
  //       data: posts.toMap());
  //   log(response.statusCode.toString());
  // }
}
