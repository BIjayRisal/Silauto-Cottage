import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
       children: [
         ListTile(title: Text("Dashboard"),),
         ListTile(title: Text("Comapany Branches"),),
         ExpansionTile(title: Text("Banking"),
           children: <Widget>[
             ListTile
               (title: Text('Bank/Co-operative'),),
             ListTile
              (title: Text('Cheque Alerts '),),
             ListTile
               (title: Text('All Transactions'),),
           ],
         ),
         ListTile(title: Text("Day Book"),),
         Divider(color: Colors.black,),
         ExpansionTile(title: Text("Items"),
           children: <Widget>[
             ListTile
               (title: Text('Item Category'),),
             ListTile
               (title: Text('Items'),),
             ListTile
               (title: Text('Item Adjustment'),),
           ],
         ),
         Divider(color: Colors.red,),
         ExpansionTile(title: Text("Sales/Income"),
           children: <Widget>[
             ListTile
               (title: Text('Customers'),),
             ListTile
               (title: Text('Invoice'),),
             ListTile
               (title: Text('Payment Received'),),
             ListTile
               (title: Text('Credits'),),
           ],
         ),
         Divider(color: Colors.black,),
         ExpansionTile(title: Text("Purchases"),
           children: <Widget>[
             ListTile
               (title: Text('Vendors'),),
             ListTile
               (title: Text('Bills'),),
             ListTile
               (title: Text('Expenses'),),
             ListTile
               (title: Text('Payment Made'),),
             ListTile
               (title: Text('Vendor Credits'),),
           ],
         ),
         Divider(color: Colors.black,),
         ListTile
           (title: Text('Reports'),),
       ],
      ),
    );
  }
}
