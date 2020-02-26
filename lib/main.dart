import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/FoldingCellSimpleDemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  final pageTabs = [
    [
      FoldingCellSimpleDemo(),
      FoldingCellSimpleDemo()
    ],
    [
      FoldingCellSimpleDemo(),
      FoldingCellSimpleDemo(),
      FoldingCellSimpleDemo(),
      FoldingCellSimpleDemo()
    ],
    [
      FoldingCellSimpleDemo()
    ]
  ];

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex;


  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
          height: 50,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
          ],
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        body: ListView(
          children: widget.pageTabs[selectedIndex],
        ),
      ),
    );
  }
}
