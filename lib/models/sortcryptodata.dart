import 'package:cryptotracker/models/cryptodata.dart';

class SortCryptoData {
  List<CryptoData> sortFromLessToMore(List<CryptoData> cryptoDataList) {
    int left = 0;
    int right = cryptoDataList.length - 1;
    while (left <= right) {
      for (int i = right; i > left; --i) {
        if (cryptoDataList[i - 1].currentPrice >
            cryptoDataList[i].currentPrice) {
          var tempCtyproData = cryptoDataList[i - 1];
          cryptoDataList[i - 1] = cryptoDataList[i];
          cryptoDataList[i] = tempCtyproData;
        }
      }
      ++left;
      for (int i = left; i < right; ++i) {
        if (cryptoDataList[i].currentPrice <
            cryptoDataList[i + 1].currentPrice) {
          var tempCtyproData = cryptoDataList[i + 1];
          cryptoDataList[i + 1] = cryptoDataList[i];
          cryptoDataList[i] = tempCtyproData;
        }
        --right;
      }
    }
    return cryptoDataList;
  }
}
