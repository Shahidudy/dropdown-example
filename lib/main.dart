import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dropdown Sample',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DropdownSample(),
    );
  }
}

class DropdownSample extends StatefulWidget {
  DropdownSample({super.key});

  @override
  State<DropdownSample> createState() => _DropdownSampleState();
}

class _DropdownSampleState extends State<DropdownSample> {
  String defaultValue = 'Choose';

  List gadgets = [
    'Iphone',
    'Nokia',
    'Samsung',
    'Oppo',
    'Vivo',
  ];
  List electronic = [
    'Washing Machine',
    'Phone',
    'Induction coocker',
    'Kettle',
    'Floor walker',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 0),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: DropdownButtonFormField(
                hint: Text('Choose Gadgets'),
                items: gadgets.map((e) {
                  return DropdownMenuItem(value: e, child: Text(e));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    defaultValue = newValue as String;
                  });
                }),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(30)),
            margin: EdgeInsets.only(left: 20, right: 20),
            child: DropdownButtonFormField(
                hint: Text('Choose Gadgets'),
                items: electronic.map((e) {
                  return DropdownMenuItem(value: e, child: Text(e));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    defaultValue = newValue as String;
                  });
                }),
          )
        ],
      ),
    );
  }
}
