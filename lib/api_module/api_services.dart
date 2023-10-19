import 'dart:convert';

import 'package:getx_project/productModel.dart';
import 'package:http/http.dart' as http;
class ApiServices {
  static var client = http.Client();

  static Future<List<ProductModel>?> fetchProducts() async {
    var response = await client.get(Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie'));
    if(response.statusCode == 200) {
      var jsonString = response.body;
      return prodModelFromJson(jsonString);
    }
    return null;
  }
  
}
