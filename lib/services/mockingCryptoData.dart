import 'package:cryptotracker/models/cryptodata.dart';
import 'package:cryptotracker/models/sortcryptodata.dart';
import 'package:cryptotracker/services/cryptoTracker.dart';

class MockingCryptoData implements CryptoTracker {
  @override
  Future<List<CryptoData>?> getCryptoDataList() async {
    List<CryptoData> tempList = [
      CryptoData(
          id: "2",
          imageUrl:
              "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
          symbol: "btcasdafgasgdfasdgsdg",
          name: "asdasdfasdfgiuasyodgooasdighaisdugfhodsaig",
          currentPrice: 99919,
          priceChangePercent: 999999),
      CryptoData(
          id: "2",
          imageUrl:
              "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
          symbol: "btcasdafgasgdfasdgsdg",
          name: "asdasdfasdfgiuasyodgooasdighaisdugfhodsaig",
          currentPrice: 999,
          priceChangePercent: 999999),
      CryptoData(
          id: "2",
          imageUrl:
              "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
          symbol: "btcasdafgasgdfasdgsdg",
          name: "asdasdfasdfgiuasyodgooasdighaisdugfhodsaig",
          currentPrice: 199,
          priceChangePercent: 999999),
      CryptoData(
          id: "2",
          imageUrl:
              "https://coin-images.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
          symbol: "btcasdafgasgdfasdgsdg",
          name: "asdasdfasdfgiuasyodgooasdighaisdugfhodsaig",
          currentPrice: 12341235,
          priceChangePercent: 999999),
    ];
    return tempList;
  }
}
