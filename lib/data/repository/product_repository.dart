import 'package:organic_market_app/domain/models/product.dart';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductRepository {
  static const baseUrl = 'https://fakestoreapi.com';
  static const headers = {'Content-type': 'application/json'};

  Future<List<Product>> getAllProducts() async {
    return http
        .get(Uri.parse('$baseUrl/products'), headers: headers)
        .then((data) {
      final products = <Product>[];
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);

        for (var product in jsonData) {
          products.add(Product.fromJson(product));
        }
      }
      return products;
    }).catchError((err) => print(err));
  }
}
