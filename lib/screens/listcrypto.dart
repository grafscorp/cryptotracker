import 'package:cryptotracker/bloc/cryptoData/cryptoData_bloc.dart';
import 'package:cryptotracker/models/cryptodata.dart';
import 'package:cryptotracker/models/sortcryptodata.dart';
import 'package:cryptotracker/widgets/cryptocard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCrypto extends StatefulWidget {
  const ListCrypto({super.key});

  @override
  State<ListCrypto> createState() => _ListCryptoState();
}

class _ListCryptoState extends State<ListCrypto> {
  @override
  void initState() {
    super.initState();
    context.read<CryptoDataBloc>().add(LoadCryptoEvent());
  }

  List<CryptoData> cryptoDataList = [];

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<CryptoDataBloc>().add(LoadCryptoEvent());
      },
      child: BlocBuilder<CryptoDataBloc, CryptoDataState>(
        builder: (context, state) {
          if (state is LoadedCryptoDataState) {
            cryptoDataList = state.tempCryptoDataList;
            //SortCryptoData().sortFromLessToMore(cryptoDataList);
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          setState(() {});
                        },
                        label: const Text("По умолчанию"),
                        icon: const Icon(Icons.sort),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: cryptoDataList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Cryptocard(cryptoData: cryptoDataList[index]);
                      },
                    ),
                  ),
                ],
              ),
            );
          } else if (state is ErrorLoadCryptoDataState) {
            return const Center(child: Icon(Icons.error));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
