import 'package:flutter/material.dart';

class SampleTextField extends StatefulWidget {
  @override
  _SampleTextFieldState createState() => _SampleTextFieldState();
}

class _SampleTextFieldState extends State<SampleTextField> {
  // String label0 = "Email";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 100.0),
        child: Column(
          children: [
            Texts(label0: "User name", ico: Icon(Icons.supervised_user_circle)),
            Texts(label0: "Email", ico: Icon(Icons.email)),
            Texts(label0: "Password", ico: Icon(Icons.password)),
            Texts(label0: "NIC", ico: Icon(Icons.indeterminate_check_box)),
          ],
        ),
      ),
    );
  }
}

class Texts extends StatelessWidget {
  const Texts({Key? key, required this.label0, required this.ico})
      : super(key: key);

  final String label0;
  final Icon ico;

  @override
  Widget build(BuildContext context) {
    return Container(
      // body: Container(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: this.label0,
              //   if (label0 == "Password"){
              //   obscureText: true,
              // },
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(color: Colors.red),
              ),
              prefixIcon: this.ico,
            ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),

      // ),
    );
  }
}
