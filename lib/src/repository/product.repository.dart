import 'dart:convert';
import 'dart:core';
import '../../grobal.config.dart';
import '../models/product.model.dart';
import 'package:http/http.dart' as http;

Future<List<ProductModel>> getAllProducts() async {
// Future<List<ProductModel>> getAllProducts(categoryId, search) async {
  String url = api_url + "product-index";
  // String url = api_url + "product/${categoryId}?search=${search}";

  var response = await http.get(Uri.parse(url), headers: {
    'Connection': 'Keep-Alive',
    'Content-Type': 'aplication/json',
    'Accept': 'aplication/json'
  });

  if (response.statusCode == 200) {
    List result = jsonDecode(response.body)["data"];
    return result.map((item) {
      return ProductModel.fromJson(item);
    }).toList();
  }
  return [];
}
