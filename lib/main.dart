// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: const Icon(Icons.menu_open_sharp),
//           actions: const [
//             Icon(Icons.lock),
//           ],
//         ),
//         body: Column(
//           children: [
//             Container(
//               alignment: Alignment.topLeft,
//               width: MediaQuery.of(context).size.width,
//               padding: const EdgeInsets.fromLTRB(10, 50, 5, 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     'Eat Healthy',
//                     style: TextStyle(
//                       fontSize: 35,
//                     ),
//                   ),
//                   Text(
//                     'Our Daily Healthy Food Habit',
//                     style: TextStyle(
//                       color: Colors.grey,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                     decoration: BoxDecoration(
//                         borderRadius:
//                         const BorderRadius.all(Radius.circular(10)),
//                         border: Border.all(color: Colors.grey, width: 1)),
//                     child: const Text('Fruits'),
//                   ),
//                   Container(
//                     padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                     decoration: BoxDecoration(
//                         borderRadius:
//                         const BorderRadius.all(Radius.circular(10)),
//                         border: Border.all(color: Colors.grey, width: 1)),
//                     child: const Text('Fruits'),
//                   ),
//                   Container(
//                     padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                     decoration: BoxDecoration(
//                         borderRadius:
//                         const BorderRadius.all(Radius.circular(10)),
//                         border: Border.all(color: Colors.grey, width: 1)),
//                     child: const Text('Fruits'),
//                   ),
//                   Container(
//                     padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                     decoration: BoxDecoration(
//                         borderRadius:
//                         const BorderRadius.all(Radius.circular(10)),
//                         border: Border.all(color: Colors.grey, width: 1)),
//                     child: const Text('Vegetables'),
//                   ),
//                   Container(
//                     padding:
//                     const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                     decoration: BoxDecoration(
//                         borderRadius:
//                         const BorderRadius.all(Radius.circular(10)),
//                         border: Border.all(color: Colors.grey, width: 1)),
//                     child: const Text('Grilled'),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.only(top: 10),
//                           color: Colors.amber,
//                           width: MediaQuery.of(context).size.width / 2.2,
//                           height: 120,
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(top: 10),
//                           color: Colors.black,
//                           width: MediaQuery.of(context).size.width / 2.2,
//                           height: 120,
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(top: 10),
//                           color: Colors.black,
//                           width: MediaQuery.of(context).size.width / 2.2,
//                           height: 120,
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(top: 10),
//                           color: Colors.black,
//                           width: MediaQuery.of(context).size.width / 2.2,
//                           height: 120,
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(top: 10),
//                           color: Colors.black,
//                           width: MediaQuery.of(context).size.width / 2.2,
//                           height: 120,
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       width: 10,
//                     ),
//                     Column(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.only(top: 10),
//                           color: Colors.redAccent,
//                           width: MediaQuery.of(context).size.width / 2.2,
//                           height: 120,
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(top: 10),
//                           color: Colors.blueAccent,
//                           width: MediaQuery.of(context).size.width / 2.2,
//                           height: 120,
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(top: 10),
//                           color: Colors.blueAccent,
//                           width: MediaQuery.of(context).size.width / 2.2,
//                           height: 120,
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(top: 10),
//                           color: Colors.blueAccent,
//                           width: MediaQuery.of(context).size.width / 2.2,
//                           height: 120,
//                         ),
//                         Container(
//                           margin: const EdgeInsets.only(top: 10),
//                           color: Colors.blueAccent,
//                           width: MediaQuery.of(context).size.width / 2.2,
//                           height: 120,
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         )
//     );
//   }
// }

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
  //propertes


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          centerTitle: true,
          title: const Text(
            'Start Activity',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width/100)*2,vertical: (MediaQuery.of(context).size.width/100)*1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.amber,
                        width: (MediaQuery.of(context).size.width/100)*46,
                        height: (MediaQuery.of(context).size.width/100)*45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.motorcycle),
                            Text('Cycling')
                          ],
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Container(
                        color: Colors.amber,
                        width: (MediaQuery.of(context).size.width/100)*46,
                        height: (MediaQuery.of(context).size.width/100)*45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.map),
                            Text('Travel')
                          ],
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Container(
                        color: Colors.amber,
                        width: (MediaQuery.of(context).size.width/100)*46,
                        height: (MediaQuery.of(context).size.width/100)*45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.music_video),
                            Text('Shooting')
                          ],
                        ),
                      )
                    ],
                  ),
                  //const SizedBox(width: 70,),
                  Column(
                    children: [
                      Container(
                        color: Colors.amber,
                        width: (MediaQuery.of(context).size.width/100)*46,
                        height: (MediaQuery.of(context).size.width/100)*45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.car_rental),
                            Text('Rent Car')
                          ],
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Container(
                        color: Colors.amber,
                        width: (MediaQuery.of(context).size.width/100)*46,
                        height: (MediaQuery.of(context).size.width/100)*45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.car_rental),
                            Text('Rent Car')
                          ],
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Container(
                        color: Colors.amber,
                        width: (MediaQuery.of(context).size.width/100)*46,
                        height: (MediaQuery.of(context).size.width/100)*45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.car_rental),
                            Text('Rent Car')
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.amber,
                        width: (MediaQuery.of(context).size.width/100)*15,
                        height: (MediaQuery.of(context).size.width/100)*10,
                      ),

                      Container(
                        color: Colors.amber,
                        width: (MediaQuery.of(context).size.width/100)*15,
                        height: (MediaQuery.of(context).size.width/100)*10,
                      ),

                      Container(
                        color: Colors.amber,
                        width: (MediaQuery.of(context).size.width/100)*15,
                        height: (MediaQuery.of(context).size.width/100)*10,
                      ),

                      Container(
                        color: Colors.amber,
                        width: (MediaQuery.of(context).size.width/100)*15,
                        height: (MediaQuery.of(context).size.width/100)*10,
                      )
                    ],
                  ),
                  ]
                ),
            ],

          ),
        )
    );
  }
}