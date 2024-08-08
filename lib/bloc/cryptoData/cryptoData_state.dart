part of 'cryptoData_bloc.dart';

class CryptoDataState {}

class LoadingCryptoDataState extends CryptoDataState {}

class LoadCryptoDataState extends CryptoDataState {}

class LoadedCryptoDataState extends CryptoDataState {
  final List<CryptoData> tempCryptoDataList;

  LoadedCryptoDataState(
    this.tempCryptoDataList,
  );
}

class ErrorLoadCryptoDataState extends CryptoDataState {}

class InitCryptoDataState extends CryptoDataState {}
