import 'package:flutter/material.dart';
import 'package:untitled/widget/NewTransaction.dart';
import 'package:untitled/widget/transaction_list.dart';
import 'package:untitled/model/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.blue,
        fontFamily: 'QuickSans',
        textTheme: ThemeData.light()
            .textTheme
            .copyWith(headline6: TextStyle(fontFamily: "OpenSans",fontSize: 20)),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light()
              .textTheme
              .copyWith(title: TextStyle(fontFamily: "OpenSans",fontSize: 20)),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transactions = [];
    //Transaction.name(0, 'title1', 1, DateTime.now()),
   // Transaction.name(1, 'title2', 2, DateTime.now())
 // ];
  void _addNewTransaction(String title, double amount) {
    setState(() {
      int id = transactions.length;
      transactions.add(Transaction.name(id, title, amount, DateTime.now()));
    });
  }

  void _startNewTransaction(BuildContext context) {
    print("fire");
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bctx) {
          return GestureDetector(
            onTap: () {},
            child: NewTransaction(_addNewTransaction),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _startNewTransaction(context)),
        ],
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Text("Charts"),
          ),
          TransactionList(transactions: transactions),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startNewTransaction(context),
      ),
    );
  }
}
