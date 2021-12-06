import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 5, color: Colors.yellow)),
            ),
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(width: 5, color: Colors.red)),
            ),
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 5, color: Colors.yellow)),
            ),
          ],
        ),
      ),
    );
  }
}
