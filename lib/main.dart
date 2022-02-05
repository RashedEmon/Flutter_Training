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
      debugShowCheckedModeBanner: false,
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
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Column(
            children: [
              customeCard(title:"Praktikum PCD", subTitle: "Tahun ajaran 2019/2020", username: "Puja Hanifah", mainColor: Colors.red, secondaryColor: Colors.redAccent),
              customeCard(title: "Bengkel GIS", subTitle: "Tahun Ajaran 2019/2020", username: "Iqbal Mahtama",mainColor: Colors.blue, secondaryColor: Colors.blueAccent),
              customeCard(title: "Animasu Computer", subTitle: "Tahun Ajaran 2019/2020", username: "Aida kamila")
            ],
          ),
        )
    );
  }

  customeCard({required String title,required String subTitle, required String username, Color mainColor=Colors.green,Color secondaryColor=Colors.lightGreen}){
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width/3,
      color: mainColor,
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        padding: const EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 15),
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25
                  ),),
                Container(
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: const Icon(Icons.notifications)
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.width/100,),
            Text(subTitle),
            SizedBox(height: (MediaQuery.of(context).size.width/100)*5,),
            Row(
              children: [
                const Icon(Icons.person),
                Text(username)
              ],
            )
          ],
        ),
      ),
    );
  }
}