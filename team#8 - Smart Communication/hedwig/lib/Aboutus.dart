import 'package:flutter/material.dart';

class About_us extends StatefulWidget {
  @override
  _About_usState createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("About Us"),
      ),
      body: Container(
        color: Color.fromRGBO(176, 155, 113, 0.9),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset("images/pp.jpeg"),
                  Text(
                    "This app is a prototype that aims to provide a platform that would facilitate local deliveries. The basic idea is enabling a one to one connection between the sender and transport channel , it will have cutting edge over the existing methods in the targeted area. Provided the constraints , we were able to come up with a UI and dummy data.The Team members comprise of Prateek Chouhan (Team Leader), Mayank Ajmeri , Mayank Bazari, Nishant Satapara and Anvay Mishra. ",
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
