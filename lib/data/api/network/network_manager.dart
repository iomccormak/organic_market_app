import 'package:organic_market_app/domain/models/product/product.dart';
import 'package:http/http.dart' as http;
import 'package:organic_market_app/utils/api_constants.dart';

class NetworkManager {
  Future<List<Product>> getProducts() async {
    final url = Uri.parse(ApiConstants.baseUrl + ApiConstants.products);
    final http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return productResponseFromJson(response.body);
    } else {
      return [];
    }
  }
}
