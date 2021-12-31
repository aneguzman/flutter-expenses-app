import 'package:flutter/material.dart';

import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'First Purchase', amount: 25, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'First Purchase', amount: 25, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Card(child: Text('Chart!')),
          Column(
            children: transactions.map((transasction) {
              return Card(
                child: Text(transasction.title),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
