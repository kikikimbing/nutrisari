import 'package:mekari_network/mekari_network.dart';

class Networking {
  final MKRNetwork httpClient;

  Networking({
    required this.httpClient,
  });

  Future<dynamic> getRequest({
    required String params,
  }) async {
    final response = await httpClient.get(
      "/api/food-database/v2/parser",
      queryParameters: {
        "app_id": "5750513c",
        "app_key": "9b0d37a59abfc018a33a91b9adfcb770",
        "ingr": params,
        "nutrition-type": "cooking",
      },
    );

    return response;
  }
}
