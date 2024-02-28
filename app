import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Interface Example'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Container Example:',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
            child: Center(
              child: Text(
                'This is a Container',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'GridView Example:',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                6,
                (index) => Container(
                  margin: EdgeInsets.all(5.0),
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Item ${index + 1}',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'TextBox Example:',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your text here...',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
