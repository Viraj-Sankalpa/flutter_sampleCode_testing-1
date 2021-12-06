import 'package:ex1/sampleTextField.dart';
import 'package:ex1/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SampleTextField()),
              );
            },
            child: Text("Next page"),
          ),
        ),
      ),
    );
  }
}
