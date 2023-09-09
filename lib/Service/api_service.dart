import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:seller_helper/models/Products.dart';

import '../models/Album.dart';

class ApiService {
  static const String baseUrl = 'https://dummyjson.com';
  static const String allCountries = '/products';

  static Future<List<Product>> getAllProducts() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode != 200) {
      throw Exception('Failed to load  products');
    }
    final List<dynamic> data = json.decode(response.body)['products'];
    return data.map((json) => Product.fromJson(json)).toList();
    print(jsonDecode(response.body)['products']);
    //return Product.fromJson(jsonDecode(response.body));
  }

  static Future<Album> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Album.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
