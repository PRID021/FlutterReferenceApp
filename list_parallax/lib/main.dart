import 'package:flutter/material.dart';
import 'package:list_parallax/parallax_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExampleParallax(),
    );
  }
}

class ExampleParallax extends StatelessWidget {
  const ExampleParallax({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ParallaxRecipe(),
    );
  }
}
