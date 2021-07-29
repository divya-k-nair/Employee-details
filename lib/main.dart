import 'package:employee_details/entry.dart';
import 'package:employee_details/navig.dart';
import 'package:employee_details/search.dart';
import 'package:employee_details/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(Menu());
}
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Entry(),
      ),
    );
  }
}

