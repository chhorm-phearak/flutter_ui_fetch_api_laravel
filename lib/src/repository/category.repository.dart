import 'dart:convert';

import 'package:ecommerce/grobal.config.dart';
import 'package:http/http.dart' as http;
import '../models/category.model.dart';

Future<List<CategoryModel>> getAllCategoryRepository() async {
  String url = api_url + "category-index";

  var response = await http.get(
    Uri.parse(url),
    headers: {
      'Connection': 'Keep-Alive',
      'Content-Type': 'aplication/json',
      'Accept': 'aplication/json'
    },
  );

  if (response.statusCode == 200) {
    List result = jsonDecode(response.body)["data"];
    return result.map((item) {
      return CategoryModel.fromJson(item);
    }).toList();
  }
  return [];
}
