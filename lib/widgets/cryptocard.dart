// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cryptotracker/models/cryptodata.dart';
import 'package:cryptotracker/widgets/coinchart.dart';
import 'package:cryptotracker/widgets/coinimage.dart';
import 'package:flutter/material.dart';

class Cryptocard extends StatelessWidget {
  Cryptocard({
    super.key,
    required this.cryptoData,
  });

  CryptoData cryptoData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Label Coin and Charts
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 20),
                  child: CoinImage(imageUrl: cryptoData.imageUrl, size: 40),
                ),

                //Text Label Coin
                SizedBox(
                  width: 80,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        cryptoData.symbol.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        cryptoData.name,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 16),
                      ),
                      //TEST
                    ],
                  ),
                ),
                //ChartsCoin
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: SizedBox(width: 100, height: 60, child: CoinChart()),
                ),
              ],
            ),
            //Chart Coin
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //   child: Container(
            //     width: 100.0,
            //     color: Colors.red,
            //   ),
            // ),
            //Coin Data
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            cryptoData.priceChangePercent < 0
                                ? Icons.trending_down_rounded
                                : Icons.trending_up_rounded,
                            color: cryptoData.priceChangePercent < 0
                                ? Colors.red
                                : Colors.green,
                          ),
                          Text(
                            cryptoData.currentPrice < 1000000
                                ? "\$${cryptoData.currentPrice.toStringAsFixed(2)}"
                                : "\$${(cryptoData.currentPrice / 1000000).toStringAsFixed(2)}m",
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                      Text(
                        cryptoData.priceChangePercent < 1000000
                            ? "${cryptoData.priceChangePercent.toStringAsFixed(2)}%"
                            : "${(cryptoData.priceChangePercent / 1000000).toStringAsFixed(2)}m%",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: cryptoData.priceChangePercent < 0
                                ? Colors.red
                                : Colors.green),
                      ),
                      SizedBox(
                        height: 40,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border_outlined),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
