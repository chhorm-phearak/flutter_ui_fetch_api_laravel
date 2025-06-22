import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
import '../../grobal.config.dart';
import '../models/brand.model.dart';

Future<List<BrandModel>> getAllBrandRepository() async {
  // call url from global.config.dart
  String url = api_url + "brand-index";

  //debug 2
  var response = await http.get(
    Uri.parse(url),
    headers: {
      'Connection': 'Keep-Alive',
      'Content-Type': 'aplication/json',
      'Accept': 'aplication/json',
    },
  );

  //debug 3
  if (response.statusCode == 200) {
    List result = jsonDecode(response.body)["data"];

    return result.map((item) {
      return BrandModel.fromJson(item);
    }).toList();
  }
  return [];
}
