import 'package:flutter/material.dart';
import 'package:untitled/widget/NewTransaction.dart';
import 'package:untitled/widget/transactionView.dart';
import 'package:untitled/widget/transaction_list.dart';
import 'package:untitled/model/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Expense App"),),
        backgroundColor: Colors.orange,
        body: Column(
          children: <Widget>[
            Card(child: Text("Charts"),),
            TransactionView(),



        ],),
      ),
    );
  }
}


