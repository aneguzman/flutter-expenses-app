import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactionList;
  
  TransactionList(this.transactionList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionList.map((tr) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${tr.amount}',
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tr.title,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat.yMMMd().format(tr.date),
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
