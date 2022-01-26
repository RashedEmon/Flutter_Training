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
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2,color: Colors.white),
                  ),
                  child: const Icon(
                    Icons.queue_music_outlined,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                 const SizedBox(width: 10,),
                 Container(
                   padding: const EdgeInsets.all(5),
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     border: Border.all(width: 2,color: Colors.white),
                   ),
                   child: const Icon(
                      Icons.cloud,
                    color: Colors.white,
                    size: 50,
                ),
                 )
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2,color: Colors.white),
                  ),
                  child: const Icon(
                      Icons.terrain_outlined,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2,color: Colors.white),
                  ),
                  child: const Icon(
                      Icons.facebook_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
