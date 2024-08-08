import 'package:cryptotracker/bloc/cryptoData/cryptoData_bloc.dart';
import 'package:cryptotracker/screens/homepage.dart';
import 'package:cryptotracker/themes/mainTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TrackerCurs",
      theme: MainTheme.getTheme,
      home: BlocProvider(
        create: (context) => CryptoDataBloc(),
        child: const Homepage(),
      ),
    );
  }
}
