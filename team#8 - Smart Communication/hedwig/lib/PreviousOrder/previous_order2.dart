import 'package:flutter/material.dart';

class Previous_order2 extends StatefulWidget {
  @override
  _Previous_order2State createState() => _Previous_order2State();
}

class _Previous_order2State extends State<Previous_order2> {
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
              Image.asset("images/clipart-bread-day-10.png"),
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
      _tableRowBuilder("Order ID", "P156453"),
      _tableRowBuilder("Sender's Name", "Mayank Ajmeri"),
      _tableRowBuilder("Receiver's Name", "Prateek Chouhan"),
      _tableRowBuilder(
          "Pick-up Location", "IIITV Hostel, Gandhinagar"),
      _tableRowBuilder("Drop Location", "GEC,Sector 28,Gandhinagar"),
      // _tableRowBuilder(
      //     "Receiver's Address", "Sabar Institute of Technology,Beawar"),
      _tableRowBuilder("Package Type", "Parcel"),
      _tableRowBuilder("Weight", "3.65 kg"),
      _tableRowBuilder("Pick-up Time", "10:00"),
      _tableRowBuilder("Pick-up Date", "5 August 2019"),
      _tableRowBuilder("Drop-Time", "12:00"),
      _tableRowBuilder("Delivery Date", "5 August 2019"),
      _tableRowBuilder("Handle with Care", "No"),
      _tableRowBuilder("Grand Total", "Rs. 200"),
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
