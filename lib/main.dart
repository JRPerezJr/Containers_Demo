import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Containers'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text('Simple Containers'),
                SizedBox(height: 10.0),
                Container(
                  color: Colors.pinkAccent,
                  height: 100.0,
                  width: 300.0,
                ),
                SizedBox(height: 10.0),
                Text('Containers with a child'),
                SizedBox(height: 10.0),
                Container(
                  color: Colors.blueAccent,
                  height: 100.0,
                  width: 300.0,
                  child: Center(
                    child: Text('The Child'),
                  ),
                ),
                SizedBox(height: 10.0),
                Text('Nested Containers'),
                SizedBox(height: 10.0),
                Container(
                  color: Colors.redAccent,
                  height: 300.0,
                  width: 300.0,
                  child: Center(
                    child: Container(
                      height: 150.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        border: Border.all(color: Colors.black, width: 2.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Text('Containers with Border Radius'),
                SizedBox(height: 10.0),
                Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    border: Border.all(color: Colors.black, width: 2.0),
                  ),
                ),
                SizedBox(height: 10.0),
                Text('Containers with Colored Borders'),
                SizedBox(height: 10.0),
                Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    border: Border.all(color: Colors.black, width: 2.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
