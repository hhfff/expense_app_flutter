import 'package:flutter/material.dart';
import 'package:untitled/widget/transaction_list.dart';

import 'NewTransaction.dart';
import 'package:untitled/model/transaction.dart';
class TransactionView extends StatefulWidget {
  @override
  _TransactionViewState createState() => _TransactionViewState();
}

class _TransactionViewState extends State<TransactionView> {
  final List<Transaction> transactions=[
  Transaction.name(0, 'title1', 1, DateTime.now()),
  Transaction.name(1, 'title2', 2, DateTime.now())
  ];
  _addNewTransaction(String title,double amount){
    setState(() {
      int id= transactions.length;
      transactions.add(Transaction.name(id, title, amount, DateTime.now()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(transactions: transactions,),
    ],);
  }
}
