import 'package:bunny_appbar/search_bar.dart';
import 'package:flutter/material.dart';

import 'background_waves_clipper.dart';
import 'sliver_search_appbar.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bunny Search SearchBar Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: const SearchPage());
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: SliverSearchAppBar(),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(16),
                    child: const Text(
                      'Cruelty-free brand',
                      style: TextStyle(fontSize: 20),
                    ));
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
