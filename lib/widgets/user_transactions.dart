import 'package:flutter/material.dart';

import './transaction_list.dart';
import './new_transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'First Purchase', amount: 25, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'First Purchase', amount: 25, date: DateTime.now()),
  ];

  void _addTransaction(String title, double amount) {
    Transaction tx = Transaction(
      title: title, 
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString()
    );

    setState(() {
      _userTransactions.add(tx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
