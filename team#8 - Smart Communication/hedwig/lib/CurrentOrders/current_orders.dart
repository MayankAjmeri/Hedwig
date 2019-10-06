import 'package:flutter/material.dart';

class Current_order extends StatefulWidget {
  @override
  _Current_orderState createState() => _Current_orderState();
}

class _Current_orderState extends State<Current_order> {
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
              Padding(
              padding: const EdgeInsets.only(top : 15,bottom : 15,right : 250),
              child : Image.asset("images/courier.png",height : 150 ,width : 150,alignment : Alignment.centerLeft ),
              ),
              Table(
                children: _tableBuilder1(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _tableBuilder() {
    return [
      _tableRowBuilder("Order ID", "P987654"),
      _tableRowBuilder("Sender's Name", "Mayank Bazari"),
      _tableRowBuilder("Receiver's Name", "Mayank Ajmeri"),
      _tableRowBuilder(
          "Pick-up Location", "GEC Gandhinagar, Sector 28, Gandhinagar"),
      _tableRowBuilder("Drop Location", "IIITV Hostel, Prantij"),
      // _tableRowBuilder(
      //     "Receiver's Address", "Sabar Institute of Technology,Beawar"),
      _tableRowBuilder("Package Type", "Parcel"),
      _tableRowBuilder("Weight", "2.5 kg"),
      _tableRowBuilder("Pick-up Time", "9:50"),
      _tableRowBuilder("Pick-up Date", "6 October 2019"),
      _tableRowBuilder("Expected Drop-Time", "14:20"),
      _tableRowBuilder("Estimated Date", "6 October 2019"),
      _tableRowBuilder("Handle with Care", "Yes"),
      _tableRowBuilder("Grand Total", "Rs. 253"),
    ];
  }
_tableBuilder1() {
    return [
      _tableRowBuilder("ID", "C123458"),
      _tableRowBuilder("Name", "Raju Singh"),
      _tableRowBuilder(
          "Mobile No.", "9564862354"),
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
