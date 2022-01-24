import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Training'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    //print('pressed');
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.blue,
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 2,
        child: Column(
          children: [
            Container(
              color: Colors.blue[125],
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height / 2) / 5,
            ),
            Container(
              color: Colors.blue[100],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
            ),
            Container(
              color: Colors.blue[75],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
            ),
            Container(
              color: Colors.blue[50],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
            ),
            Container(
              color: Colors.blue[25],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
            )
          ],
        ),
      ),
    )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
