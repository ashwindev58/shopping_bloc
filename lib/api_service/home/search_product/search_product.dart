import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import '../../../models/product/model_product.dart';

Future<List<ModelProductData>> fetchAllProductData() async {
  final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));

  if (response.statusCode == 200) {
    // Decode JSON response into a list of dynamic objects
    List<dynamic> data = json.decode(response.body);
    
    // Map each dynamic object to a ModelProductData object and create a list
    List<ModelProductData> productList = data
        .map((productJson) => ModelProductData.fromJson(productJson))
        .toList();

    // Return the list of ModelProductData objects
    return productList;
  } else {
    // If the request was not successful, throw an exception
    throw Exception('Failed to load product data');
  }
}

Future<List<ModelProductData>> fetchcategoryProductData({required String category}) async {
  final response = await http.get(Uri.parse('https://fakestoreapi.com/products/category/$category'));

  if (response.statusCode == 200) {
    // Decode JSON response into a list of dynamic objects
    List<dynamic> data = json.decode(response.body);
    
    // Map each dynamic object to a ModelProductData object and create a list
    List<ModelProductData> productList = data
        .map((productJson) => ModelProductData.fromJson(productJson))
        .toList();

    // Return the list of ModelProductData objects
    return productList;
  } else {
    // If the request was not successful, throw an exception
    throw Exception('Failed to load product data');
  }
}


