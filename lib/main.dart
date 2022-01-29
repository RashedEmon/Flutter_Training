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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu_open_sharp),
          actions: [
            Icon(Icons.lock),
          ],
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(35, 50, 5, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Eat Healthy',
                    style: TextStyle(
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    'Our Daily Healthy Food Habit',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: const Text('Fruits'),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: const Text('Vegetables'),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: const Text('Grilled'),
                  ),
                ],
              ),
            ),
            Container(
                child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 10),
                      color: Colors.amber,
                      width: MediaQuery.of(context).size.width / 2.1,
                      height: 120,
                    ),
                    Container(
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width / 2.1,
                      height: 120,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 10),
                      color: Colors.amber,
                      width: MediaQuery.of(context).size.width / 2.1,
                      height: 120,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 10),
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width / 2.1,
                      height: 120,
                    ),
                  ],
                )
              ],
            ))
          ],
        ));
  }
}
