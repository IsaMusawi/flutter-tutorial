import 'package:flutter/material.dart';
import 'package:flutter_tutorial/box/product_box.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //This widget is root for your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter totorial',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: const <Widget>[
          ProductBox(
            name: 'HP1',
            description: 'barang hp1',
          ),
          ProductBox(
            name: 'HP2',
            price: 8000,
          ),
          ProductBox(
            name: 'HP3',
            description: 'barang hp3',
            price: 32000,
          ),
          ProductBox(
            name: 'HP4',
            description: 'barang hp4',
            price: 128000,
          ),
        ],
      )
    );
  }
}