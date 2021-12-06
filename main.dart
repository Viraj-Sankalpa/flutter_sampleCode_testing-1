import 'package:ex1/example1.dart';
import 'package:ex1/external%20plugins/external_plugins.dart';
import 'package:ex1/face.dart';
import 'package:ex1/first_page.dart';
import 'package:ex1/home_page.dart';
import 'package:ex1/net_photo.dart';
import 'package:ex1/que2.dart';
import 'package:ex1/row_wid.dart';
import 'package:ex1/sampleTextField.dart';
import 'package:ex1/sample_image.dart';
import 'package:ex1/sirez.dart';
import 'package:ex1/test_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        // ),
        home: ExternalPlugiins());
  }
}
