import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:seller_helper/models/Products.dart';
import 'package:seller_helper/util/ApiEndPoints.dart';

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
  }

  static Future<Album> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  static Future<http.Response> login(String phone, String password) async {
    final authenticate = await http.post(
      Uri.parse('${ApiEndPoints.baseUrl}${ApiEndPoints.login}'),
      body: {'phone': phone, 'password': password},
    );

    // if (authenticate.statusCode > 500) {
    //   throw Exception(authenticate);
    // }
    // if (authenticate.statusCode == 401) {
    //   return authenticate.body.toString();
    // }
    print("data ........daaaaata");
    print(authenticate.body);
    print("data ........daaaaata");

    return authenticate;
  }
}
