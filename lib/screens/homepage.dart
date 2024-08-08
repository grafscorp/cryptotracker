import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:cryptotracker/screens/favoritepage.dart';
import 'package:cryptotracker/screens/listcrypto.dart';
import 'package:cryptotracker/themes/convexAppBarStyle.dart';
import 'package:cryptotracker/themes/mainTheme.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: const Icon(
            Icons.euro_rounded,
            color: MainTheme.colorSecondary,
          ),
          title: const Text(
            "Tracker Curs",
            style: TextStyle(color: Colors.orange),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: StyleProvider(
          style: StyleConvexAppBar(),
          child: ConvexAppBar(
            shadowColor: MainTheme.colorSecondary,
            backgroundColor: MainTheme.colorPrimary,
            color: MainTheme.colorSecondary,
            activeColor: MainTheme.colorSecondary,
            style: TabStyle.flip,
            height: 50,
            items: const <TabItem>[
              TabItem(
                icon: Icons.monetization_on_rounded,
              ),
              TabItem(icon: Icons.favorite_rounded),
            ],
          ),
        ),
        body: const Expanded(
          child: TabBarView(
            children: [
              ListCrypto(),
              FavoritePage(),
            ],
          ),
        ),
      ),
    );
  }
}
