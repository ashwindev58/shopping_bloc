// product_repository.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProductRepository {
  Future<List<String>> fetchCategories() async {
    final response = await http.get(Uri(path:'https://fakestoreapi.com/products/categories'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return List<String>.from(data);
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
