import 'package:flutter/material.dart';
import 'dart:async';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int reverseCounter = 100;
  int index = 0;
  dynamic timer;

  List<String> images = [
    'https://cdn.pixabay.com/photo/2015/11/16/16/28/bird-1045954_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/07/16/47/kingfisher-2046453_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/08/12/16/59/parrot-3601194_960_720.jpg'
  ];
  @override
  void initState() {
    super.initState();
    // Timer timer = Timer.periodic(const Duration(seconds: 10), (timer) {
    //   changeImage();
    // });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }
  // void _incrementCounter() {
  //   print('pressed');
  //   setState(() {
  //     reverseCounter--;
  //     _counter++;
  //   });
  // }

  void nextImage() {
    setState(() {
      if (index > images.length - 2) {
        index = 0;
      } else {
        index++;
      }
    });
  }

  void prevImage() {
    setState(() {
      if (index <= 0) {
        index = images.length - 1;
      } else {
        index--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            '$reverseCounter',
            style: Theme.of(context).textTheme.headline4,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                  image: NetworkImage(
                    images[index],
                  ),
                  fit: BoxFit.cover),
            ),
            width: 200,
            height: 150,
            // child: const Padding(
            //   padding: EdgeInsets.all(100),
            //   child: Text(
            //     'i am a Bird',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 30,
            //       fontWeight: FontWeight.w500,
            //     ),
            //   ),
            // )
          ),
          Row(
            children: <Widget>[
              ElevatedButton(
                  onPressed: prevImage, child: const Icon(Icons.arrow_left)),
              const SizedBox(
                width: 50,
              ),
              ElevatedButton(
                  onPressed: nextImage, child: const Icon(Icons.arrow_right))
            ],
          )
        ],
      )),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: changeImage,
      //   tooltip: 'change image',
      //   child: const Icon(Icons.arrow_back),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
