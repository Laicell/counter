import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text("Counter"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Press '-' to decrement",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                CounterWidget(),
                Text(
                  "Press '+' to increment",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  @override
  void initState() {
    _count = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5
      ),
      decoration:BoxDecoration(
          color:Colors.indigoAccent,
          borderRadius: BorderRadius.circular(10),
          border:Border.all(
            width:1,
            color:Colors.black,
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                _count -= 1;
              });
            },
            icon: Icon(Icons.remove)
          ),
          Text(
            '$_count',
            style: TextStyle(fontSize: 20),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
