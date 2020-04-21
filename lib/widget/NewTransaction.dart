import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function newTransactionHandler;


  NewTransaction(this.newTransactionHandler);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController amountController = TextEditingController();

  void _submitData(){
    String title=titleController.text;
    double amt=double.parse(amountController.text);
    if(title==null || amt<=0) return;
    widget.newTransactionHandler(title,amt);
    Navigator.of(context).pop();

  }

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
                _submitData();

              },
            ),
          ],
        ),
    );
  }
}
