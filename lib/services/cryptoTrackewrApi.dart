import 'dart:convert';

import 'package:cryptotracker/models/cryptodata.dart';
import 'package:cryptotracker/services/cryptoTracker.dart';
import 'package:http/http.dart' as http;

class CryptoTrackerApi implements CryptoTracker {
  final String urlapi =
      "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false";

  @override
  Future<List<CryptoData>?> getCryptoDataList() async {
    var url = Uri.parse(urlapi);
    var response = await http.get(url);
    switch (response.statusCode) {
      case 200:
        final resList =
            List<Map<String, dynamic>>.from(json.decode(response.body));
        List<CryptoData> cryptoDataList = [];
        for (var item in resList) {
          cryptoDataList.add(
            CryptoData(
              id: item["id"],
              imageUrl: item["image"],
              symbol: item["symbol"],
              name: item["name"],
              currentPrice: item["current_price"] + 0.0,
              priceChangePercent: item["price_change_percentage_24h"],
            ),
          );
        }
        return cryptoDataList;
      default:
        return null;
    }
  }
}
