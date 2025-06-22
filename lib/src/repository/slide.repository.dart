import 'dart:convert';
import '../../grobal.config.dart';
import 'package:http/http.dart' as http;
import '../models/slide.model.dart';

Future<List<SlideModel>> getAllSlideRepository() async {
  String url = api_url + "slide-index";

  var response = await http.get(Uri.parse(url), headers: {
    'Content-Type': 'aplication/json',
    'Accept': 'aplication/json',
  });

  if (response.statusCode == 200) {
    List result = jsonDecode(response.body)["data"];

    return result.map((item) {
      return SlideModel.fromJson(item);
    }).toList();
  }
  return [];
}
