import 'package:flutter/material.dart';

class Previous_order extends StatefulWidget {
  @override
  _Previous_orderState createState() => _Previous_orderState();
}

class _Previous_orderState extends State<Previous_order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Details"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset("images/envelope.png"),
              Table(
                children: _tableBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _tableBuilder() {
    return [
      _tableRowBuilder("Order ID", "D123456"),
      _tableRowBuilder("Sender's Name", "Anvay Mishra"),
      _tableRowBuilder("Receiver's Name", "Mayank Ajmeri"),
      _tableRowBuilder(
          "Pick-up Location", "GEC Gandhinagar, Sector 28, Gandhinagar"),
      _tableRowBuilder("Drop Location", "IIITV Hostel, Prantij"),
      // _tableRowBuilder(
      //     "Receiver's Address", "Sabar Institute of Technology,Beawar"),
      _tableRowBuilder("Package Type", "Document"),
      _tableRowBuilder("Weight", "75 gm"),
      _tableRowBuilder("Pick-up Time", "12:50"),
      _tableRowBuilder("Pick-up Date", "2 October 2019"),
      _tableRowBuilder("Drop-Time", "16:00"),
      _tableRowBuilder("Delivery Date", "2 October 2019"),
      _tableRowBuilder("Handle with Care", "No"),
      _tableRowBuilder("Grand Total", "Rs. 127"),
    ];
  }

  TableRow _tableRowBuilder(String parameter, String value) {
    return TableRow(
      children: [
        _tableCellBuilderBold("$parameter  :"),
        _tableCellBuilder("$value"),
      ],
    );
  }

  Widget _tableCellBuilder(String value) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Text(
          value,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      verticalAlignment: TableCellVerticalAlignment.middle,
    );
  }

  Widget _tableCellBuilderBold(String value) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Text(
          value,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      verticalAlignment: TableCellVerticalAlignment.middle,
    );
  }
}
