import 'package:cryptotracker/models/cryptodata.dart';
import 'package:cryptotracker/services/cryptoTrackewrApi.dart';
import 'package:cryptotracker/services/mockingCryptoData.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'cryptoData_state.dart';
part 'cryptoData_event.dart';

class CryptoDataBloc extends Bloc<CryptoDataEvent, CryptoDataState> {
  CryptoDataBloc() : super((InitCryptoDataState())) {
    on<LoadCryptoEvent>(
      (event, emit) async {
        emit(LoadingCryptoDataState());
        final tempCryptoDataList = await CryptoTrackerApi().getCryptoDataList();
        //final tempCryptoDataList =
        //  await MockingCryptoData().getCryptoDataList();
        if (tempCryptoDataList != null) {
          emit(LoadedCryptoDataState(tempCryptoDataList));
        } else {
          emit(ErrorLoadCryptoDataState());
        }
      },
    );
    on<InitCryptoEvent>(
      (event, emit) {
        emit(InitCryptoDataState());
      },
    );
    on<ErrorLoadCryptoEvent>(
      (event, emit) {
        emit(ErrorLoadCryptoDataState());
      },
    );
  }
}
