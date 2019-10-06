import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewOrder extends StatefulWidget {
  @override
  _NewOrderState createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  int _currValue = 0;
  bool checkbox = false;
  String _value;

  TableRow tr1(String s1, TextInputType t) {
    return TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Text(
            "$s1:",
            softWrap: true,
            style: TextStyle(fontSize: 18),
          ),
        ),
        TableCell(
          child: new TextFormField(
            decoration: InputDecoration(hintText: "Enter $s1"),
            keyboardType: t,
          ),
        ),
      ],
    );
  }

  Text details(String s) {
    return Text(
      "$s",
      style: TextStyle(fontSize: 18),
    );
  }

  Text head(String s, TextAlign ta) {
    return Text(
      "$s Details",
      style: TextStyle(fontSize: 25),
      textAlign: ta,
    );
  }

  Padding pa(double n) {
    return Padding(
      padding: EdgeInsets.all(n),
    );
  }

  Padding pl(double n) {
    return Padding(
      padding: EdgeInsets.only(left: n),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Order"),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            pa(10),
            head("Sender's ", TextAlign.center),
            Container(
              padding: EdgeInsets.all(20),
              child: Table(
                columnWidths: {1: FractionColumnWidth(0.7)},
                children: [
                  tr1("Name", TextInputType.text),
                  tr1("Email", TextInputType.emailAddress),
                  tr1("Mobile", TextInputType.number),
                  tr1("Address", TextInputType.text)
                ],
              ),
            ),
            pa(5),
            head("Receiver's ", TextAlign.center),
            Container(
              padding: EdgeInsets.all(20),
              child: Table(
                columnWidths: {1: FractionColumnWidth(0.7)},
                children: [
                  tr1("Name", TextInputType.text),
                  tr1("Email", TextInputType.emailAddress),
                  tr1("Mobile", TextInputType.number),
                  tr1("Address", TextInputType.text)
                ],
              ),
            ),
            pa(5),
            head("Courier ", TextAlign.center),
            pa(5),
            Row(
              children: <Widget>[
                pl(20),
                details("Type:"),
                pl(30),
                details("Document:"),
                Radio(
                  groupValue: _currValue,
                  onChanged: (int i) => setState(() => _currValue = i),
                  value: 1,
                ),
                pl(20),
                details("Parcel:"),
                Radio(
                  groupValue: _currValue,
                  onChanged: (int i) => setState(() => _currValue = i),
                  value: 2,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Table(
                columnWidths: {1: FractionColumnWidth(0.7)},
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Text(
                          (_currValue == 1) ? "Weight(g):" : "Weight(kg)",
                          softWrap: true,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      TableCell(
                        child: new TextFormField(
                          decoration: InputDecoration(hintText: "Enter Weight"),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),
                  tr1("Description", TextInputType.text),
                  TableRow(
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Text(
                          "Pickup Time:",
                          softWrap: true,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      TableCell(
                        child: new TextFormField(
                          decoration:
                              InputDecoration(hintText: "Enter Pickup Time"),
                          keyboardType: TextInputType.datetime,
                          inputFormatters: [
                            BlacklistingTextInputFormatter(
                                new RegExp('[\\.|\\-]'))
                          ],
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Text(
                          "Delivery time:",
                          softWrap: true,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      TableCell(
                        child: DropdownButton<String>(
                          items: [
                            DropdownMenuItem<String>(
                              child: Text('Office Hours (10AM to 7PM)'),
                              value: 'one',
                            ),
                            DropdownMenuItem<String>(
                              child: Text('Home Hours (8AM to 9PM)'),
                              value: 'two',
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          },
                          value: _value,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                pl(15),
                Text(
                  "Handle With Care",
                  style: TextStyle(fontSize: 18),
                ),
                pl(40),
                Checkbox(
                  value: checkbox,
                  onChanged: (bool value) {
                    setState(() {
                      checkbox = value;
                    });
                  },
                ),
              ],
            ),
            ButtonTheme(
              minWidth: 110.0,
              height: 42.0,
              child: RaisedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                splashColor: Colors.teal[900],
                color: Colors.teal[300],
                onPressed: () {
                  showDialog(
                    context: context,
                    child: new AlertDialog(
                      title: new Text("Proceed To Payment Gateway"),
                      content: new Text(
                          "Please check your details. After proceeding you will not be able to edit your details."),
                      actions: <Widget>[
                        FlatButton(
                          textColor: Colors.blue,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        FlatButton(
                          textColor: Colors.blue,
                          onPressed: () {},
                          child: Text(
                            "Proceed",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            pa(15),
          ],
        ),
      ),
    );
  }
}
