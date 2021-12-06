import 'package:flutter/material.dart';

class MultipleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.amber, width: 5),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(25.00))),
              child: Text("Amber Box",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 100,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.blue, width: 5),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(25.00))),
              child: Text("Blue Box",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 100,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.green, width: 5),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(25.00))),
              child: Text("Blue Box",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 100,
              width: 300,
              margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.pink,
                  border: Border.all(color: Colors.pink, width: 5),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(25.00))),
              child: Text("Blue Box",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
