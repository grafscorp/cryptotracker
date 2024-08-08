part of 'cryptoData_bloc.dart';

class CryptoDataEvent {}

class LoadingCryptoEvent extends CryptoDataEvent {}

class LoadCryptoEvent extends CryptoDataEvent {}

class LoadedCryptoEvent extends CryptoDataEvent {}

class ErrorLoadCryptoEvent extends CryptoDataEvent {}

class InitCryptoEvent extends CryptoDataEvent {}
