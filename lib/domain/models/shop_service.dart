import 'package:organic_market_app/domain/api.dart';
import 'package:organic_market_app/domain/models/product.dart';
import 'package:organic_market_app/domain/models/request_types.dart';
import 'package:organic_market_app/utils/api_constants.dart';

class ShopService {
  final NetworkManager? _networkManager = NetworkManager.instance;

  Future<List<Product>?> fetchAllProducts(
      {Map<String, dynamic>? params}) async {
    return await _networkManager!.request(
      method: ReqTypes.get,
      path: ApiConstants.products,
      model: Product(),
      queryParameters: params,
    );
  }
}
