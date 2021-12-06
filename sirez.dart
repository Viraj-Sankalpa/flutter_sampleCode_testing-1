import 'package:flutter/material.dart';

class SirDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerWidget(color: Colors.amber, text: "Amber Box"),
            ContainerWidget(color: Colors.blue, text: "Blue Box"),
            ContainerWidget(color: Colors.green, text: "Green Box"),
            ContainerWidget(color: Colors.pink, text: "Pink Box"),
            ContainerWidget(color: Colors.brown, text: "Brown Box"),
          ],
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
      padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 40.0),
      decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0))),
      child: Text(
        this.text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      transform: Matrix4.rotationZ(0.2),
    );
  }
}
