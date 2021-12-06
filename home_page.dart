import 'dart:ui';

import 'package:ex1/second_page.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _email = TextEditingController();
  var _password = TextEditingController();
  var _errorText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "E-mail",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: "E-mail",
                  errorText: _errorText,
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: _errorText == "Invalid email"
                        ? Colors.red
                        : Colors.green,
                  ))),
              onChanged: (value) {
                setState(() {
                  _errorText = EmailValidator.validate(value)
                      ? "Valid email"
                      : "Invalid email";
                });
              },
            ),
            SizedBox(height: 20.0),
            // ElevatedButton.icon(
            //   onPressed: () {
            //     if (isNull() && emailValidation()) {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => SecondPage()));
            //     }
            //   },
            //   icon: Icon(Icons.save),
            //   label: Text("Save"),
            // ),
            Text(
              "Password",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: () {
                if (isNull() && EmailValidator.validate(_email.text)) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));
                }
              },
              icon: Icon(Icons.save),
              label: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }

  bool isNull() {
    if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  // bool isNullPassword() {
  //   if (_password.text.isEmpty) {
  //     return false;
  //   } else {
  //     return true;
  //   }
  // }

  // bool emailValidation() {
  //   if (RegExp(
  //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //       .hasMatch(_email.text)) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  //   ;

  // }
}
