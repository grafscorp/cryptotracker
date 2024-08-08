import 'package:cryptotracker/models/cryptodata.dart';

abstract interface class CryptoTracker {
  Future<List<CryptoData>?> getCryptoDataList();
}
