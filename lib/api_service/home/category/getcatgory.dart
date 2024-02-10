import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServiceCategory {
  final String apiUrl = "https://fakestoreapi.com/products/categories";

  Future<List<dynamic>> getCategory() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response,
      // parse the JSON data and return it as a List
      return json.decode(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception.
      throw Exception('Failed to load data');
    }
  }
}
