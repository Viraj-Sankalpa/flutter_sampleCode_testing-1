import 'package:flutter/material.dart';

class TestButton extends StatefulWidget {
  @override
  _TestButtonState createState() => _TestButtonState();
}

class _TestButtonState extends State<TestButton> {
  String dummyText = "";
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dummyText,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    dummyText = "Text";
                    counter++;
                  });
                },
                child: Text(
                  "Text Button $counter",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lime,
                  primary: Colors.black,
                  padding: EdgeInsets.all(20.0),
                  shadowColor: Colors.amber,
                )),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  dummyText = "Elevated";
                });
              },
              child: Text(
                "Elevated Button",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.amberAccent,
                  primary: Colors.green,
                  padding: EdgeInsets.all(22.0),
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  dummyText = "Outline";
                });
              },
              child: Text(
                "Outlined Button",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: OutlinedButton.styleFrom(
                  primary: Colors.indigo,
                  padding: EdgeInsets.all(20.0),
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
