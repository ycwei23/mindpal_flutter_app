import 'package:flutter/material.dart';

class MyTherapistView extends StatefulWidget {
  const MyTherapistView({super.key});

  @override
  State<MyTherapistView> createState() => _MyTherapistViewState();
}

class _MyTherapistViewState extends State<MyTherapistView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 8, top: 14, bottom: 6),
            child: Text("我與諮商師", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), 
          ),
        ],
      )
    );
  }
}