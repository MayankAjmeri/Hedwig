import 'package:flutter/material.dart';
import 'package:hedwig/PreviousOrder/previous_order1.dart';
import 'package:hedwig/PreviousOrder/previous_order2.dart';
import 'package:hedwig/PreviousOrder/previous_order.dart';

class P_orders extends StatefulWidget {
  @override
  _P_ordersState createState() => _P_ordersState();
}

class _P_ordersState extends State<P_orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Previous Orders"),
      ),
      body: Stack(children: <Widget>[
        Image(
          image: AssetImage(
            'images/hedwig.jpg',
          ),
          fit: BoxFit.cover,
          color: Colors.white70,
          colorBlendMode: BlendMode.lighten,
        ),
        ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                // isThreeLine: true,
                title: Text("D123456"),
                subtitle: Text("2 October 2019 12:50"),
                enabled: true,
                leading: Container(
                  height: 60.0,
                  width: 60.0,
                  color: Color.fromRGBO(80, 185, 135, 0.9),
                  child: Center(
                    child: Text(
                      "D",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Previous_order()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("P123242"),
                subtitle: Text("28 August 2019 20:00"),
                enabled: true,
                leading: Container(
                  height: 60.0,
                  width: 60.0,
                  color: Colors.amberAccent[200],
                  child: Center(
                    child: Text(
                      "P",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Previous_order1()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("P156453"),
                subtitle: Text("5 August 2019 10:00"),
                enabled: true,
                leading: Container(
                  height: 60.0,
                  width: 60.0,
                  color: Colors.amberAccent[200],
                  child: Center(
                    child: Text(
                      "P",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Previous_order2()),
                  );
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
