// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CryptoData {
  String imageUrl;
  String symbol;
  String name;
  double currentPrice;
  double priceChangePercent;
  String id;
  CryptoData({
    required this.imageUrl,
    required this.symbol,
    required this.name,
    required this.currentPrice,
    required this.priceChangePercent,
    required this.id,
  });

  CryptoData copyWith({
    String? imageUrl,
    String? symbol,
    String? name,
    double? currentPrice,
    double? priceChangePercent,
    String? id,
  }) {
    return CryptoData(
      imageUrl: imageUrl ?? this.imageUrl,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      currentPrice: currentPrice ?? this.currentPrice,
      priceChangePercent: priceChangePercent ?? this.priceChangePercent,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'symbol': symbol,
      'name': name,
      'currentPrice': currentPrice,
      'priceChangePercent': priceChangePercent,
      'id': id,
    };
  }

  factory CryptoData.fromMap(Map<String, dynamic> map) {
    return CryptoData(
      imageUrl: map['imageUrl'] as String,
      symbol: map['symbol'] as String,
      name: map['name'] as String,
      currentPrice: map['currentPrice'] as double,
      priceChangePercent: map['priceChangePercent'] as double,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CryptoData.fromJson(String source) =>
      CryptoData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CryptoData(imageUrl: $imageUrl, symbol: $symbol, name: $name, currentPrice: $currentPrice, priceChangePercent: $priceChangePercent, id: $id)';
  }

  @override
  bool operator ==(covariant CryptoData other) {
    if (identical(this, other)) return true;

    return other.imageUrl == imageUrl &&
        other.symbol == symbol &&
        other.name == name &&
        other.currentPrice == currentPrice &&
        other.priceChangePercent == priceChangePercent &&
        other.id == id;
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^
        symbol.hashCode ^
        name.hashCode ^
        currentPrice.hashCode ^
        priceChangePercent.hashCode ^
        id.hashCode;
  }
}
