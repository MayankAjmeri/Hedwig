import 'package:flutter/material.dart';
// import 'package:flutter/material.dart' as prefix0;
import 'package:hedwig/Aboutus.dart';
import 'package:hedwig/CurrentOrders/current_orders.dart';
import 'package:hedwig/CurrentOrders/current_orders1.dart';
import 'package:hedwig/NewOrder.dart';
import 'package:hedwig/PreviousOrder/previous_order.dart';
import 'package:hedwig/PreviousOrder/previous_order1.dart';
import 'package:hedwig/PreviousOrder/previous_order2.dart';
import 'package:hedwig/p_order.dart';
import 'package:hedwig/user_profile.dart';
import 'package:hedwig/c_orders.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Drawer d1() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("bazari@mayank.com"),
            accountName: Text(
              "Mayank Bazari",
              style: TextStyle(fontSize: 25),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/mayank.jpeg'),
            ),
            decoration: BoxDecoration(color: Colors.black),
            onDetailsPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => User_info(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text(
              'Current Orders',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => C_orders()));
            },
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text(
              'Previous Orders',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => P_orders()));
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text(
              'About Us',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About_us()));
            },
          ),
        ],
      ),
    );
  }

  Container c1(Color color, String id, String to, String type) {
    return Container(
      decoration: new BoxDecoration(
        color: color,
        borderRadius: new BorderRadius.all(Radius.circular(15.0)),
      ),
      height: 200,
      width: 200,
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Order ID: $id",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "To: $to",
              softWrap: true,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.centerLeft,
            child: Text(
              "Package Type: $type",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HEDWIG"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: d1(),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("New Order"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewOrder()),
          );
        },
        backgroundColor: Colors.black87,
      ),
      body: Stack(
        children: <Widget>[
          Image(
            image: AssetImage(
              'images/hedwig.jpg',
            ),
            fit: BoxFit.cover,
            color: Colors.white70,
            colorBlendMode: BlendMode.lighten,
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(25, 30, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Current Orders",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        child: c1(Colors.red[400], "D653289",
                            "Yash          Shah", "Document"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Current_order1(),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      GestureDetector(
                        child: c1(
                            Colors.blue, "P987654", "Mayank Ajmeri", "Parcel"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Current_order(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Previous Orders",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        child: c1(Colors.green[400], "D123456", "Mayank Ajmeri",
                            "Document"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Previous_order(),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      GestureDetector(
                        child: c1(Colors.amber, "P123242", "Nishant Satapara",
                            "Parcel"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Previous_order1(),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      GestureDetector(
                        child: c1(Colors.purple[300], "P156453",
                            "Prateek Chouhan", "Parcel"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Previous_order2(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
