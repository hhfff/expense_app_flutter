import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final Function newTransactionHandler;


  NewTransaction(this.newTransactionHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20), 
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(hintText: "Title"),
            ),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,

              decoration: InputDecoration(hintText: "amount"),
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Submit'),
              onPressed: () {
                newTransactionHandler(titleController.text,double.parse(amountController.text));
                
              },
            ),
          ],
        ),
    );
  }
}
