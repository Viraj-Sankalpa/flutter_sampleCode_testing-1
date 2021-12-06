import 'package:flutter/material.dart';

class Face extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Container(
          height: 300,
          width: 300,
          color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: BorderRadius.circular(100),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
