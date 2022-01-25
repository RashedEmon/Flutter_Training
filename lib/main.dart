import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //first main container
        Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          height: (MediaQuery.of(context).size.height / 100) * 15,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Banner'),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('button pressed');
                    },
                    child: const Icon(Icons.three_k),
                  ),
                ],
              )),
        ),
        //second main container
        Container(
          color: Colors.grey[200],
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.alarm),
                      SizedBox(
                        width: 10,
                      ),
                      Text('your password is updated'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          debugPrint('signin button pressed');
                        },
                        child: const Text('Sign in'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          debugPrint('Dismiss button pressed');
                        },
                        child: const Text('Dismiss'),
                      )
                    ],
                  )
                ],
              )),
        ),
        const SizedBox(
          height: 5,
        ),
        //third main container
        Container(
          color: Colors.grey[200],
          width: MediaQuery.of(context).size.width,
          height: (MediaQuery.of(context).size.height / 100) * 55,
          child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('item1'),
                  Text('item2'),
                  Text('item3'),
                  Text('item4'),
                  Text('item5'),
                  Text('item6'),
                  Text('item7'),
                  Text('item8'),
                  Text('item9'),
                ],
              )),
        )
      ],
    ));
  }
}
