import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  // method untuk penambahan
  // void _increment(){
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // method untuk pengurangan
  // void _decrement(){
  //   setState(() {
  //     _counter--;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App")
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_counter.toString(), style: TextStyle(fontSize: 10 + _counter.toDouble()),),
              SizedBox(height: 5,),
              ElevatedButton(
                onPressed: () {
                  //_increment();
                  setState(() {
                    _counter++;
                  });
                },
                child: Text('Increment')),
                ElevatedButton(
                onPressed: () {
                  //_decrement();
                  setState(() {
                    _counter--;
                  });
                },
                child: Text('Decrement'))
            ],
          )
        ),
      ),
    );
  }
}