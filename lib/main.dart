
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  Random random=Random();
  int active=0;

  List<CardModel> card=[
    CardModel(title: 'Heart Rate',icon: FontAwesomeIcons.heart, text1: "80-120", text2: "healthy", duration: '120bpm'),
    CardModel(icon: FontAwesomeIcons.moon,title: "Sleep", duration: "8 h 42 m",text1: "Deep Sleep", text2:"5 h 13 m" ),
    CardModel(title: "Energy Burn", icon: FontAwesomeIcons.fire, duration: "583 kcal", text1: "Daily goal", text2: "900 kcal"),
    CardModel(title: "Steps", icon: FontAwesomeIcons.shoePrints, duration: "16,741", text1: "Daily Goal", text2: "20,000 steps"),
    CardModel(title: "Running", icon: FontAwesomeIcons.running, duration: "5,3 km", text2: "10 km", text1: "daily goal"),
    CardModel(title: "Cycling", icon: FontAwesomeIcons.biking, duration: "12,5 km", text1: "Daily Goal", text2: "20 km"),
  ];
  List<Color> colors=[
    Colors.cyan,
    Colors.teal,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.redAccent
  ];
  List<String> days=["Day", "Week", "Month"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle
            ),
            child: const Center(
              child: Icon(Icons.arrow_back_ios),
            )
        ),
        centerTitle: true,
        title: const Text('STATS', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            FaIcon(FontAwesomeIcons.googlePlay),
            FaIcon(FontAwesomeIcons.airbnb),
            FaIcon(FontAwesomeIcons.recycle),
            FaIcon(FontAwesomeIcons.paperPlane),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: days.map((e) {
                    int index=days.indexOf(e);
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          active=index;
                        });
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              color: index==active?Colors.indigo:null,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Text(e,style: TextStyle(color: index==active?Colors.white:Colors.black),)
                      ),
                    );
                  }).toList()
              ),
            ),
            const SizedBox(height: 30,),
            Expanded(
              child: GridView.builder(
                  itemCount: card.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 1, crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
                  itemBuilder: (context,index){
                    int i=random.nextInt(7);
                    return customContainer(color: colors[i], icon: card[index].icon, title: card[index].title, text1: card[index].text1, text2: card[index].text2, duration: card[index].duration );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customContainer({Color? color,IconData? icon,String title='',String duration='',String text1='',String text2=''}){
    return Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
      ),

      padding: const EdgeInsets.only(left: 20, right: 3),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: const TextStyle(color: Colors.white60, fontSize: 17),),
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon,size: 25,color: Colors.white70,)
              )
            ],
          ),
          Text(duration,style: const TextStyle(color: Colors.white60, fontSize: 20),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(text1,style: const TextStyle(color: Colors.white60, fontSize: 15),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(text2,style: const TextStyle(color: Colors.white70, fontSize: 15),),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CardModel{
  String title='';
  String duration='';
  String text1='';
  String text2='';
  IconData? icon;
  Color? color;

  CardModel({this.title='', this.color,this.duration='', this.icon, this.text1='',this.text2=''});
}