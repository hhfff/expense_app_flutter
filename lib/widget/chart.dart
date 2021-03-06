import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;
  List<Map<String,Object>> get groupedTransactionValues{
    return List.generate(7,(index){
      final weekDay=DateTime.now().subtract(Duration(days: index));
      return {'day':'T','amount':9.99};

    });
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[

        ],
      ),
    );
  }
}
