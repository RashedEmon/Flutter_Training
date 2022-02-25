import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const HomeScreen());
} 

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int prevIndex=-1;
  dynamic random;
  @override
  initState(){
    super.initState();
    random=Random();
  }
  List<Color> colors=[
    Colors.grey,
    Colors.blue,
    Colors.green,
    Colors.indigo,
    Colors.pink,
    Colors.orange,
    Colors.purple,
    Colors.red,
    Colors.yellow,
    Colors.cyan,
    Colors.lightBlue
  ];  
  List<AccountCard> card=[
    AccountCard(title: '',amount: 0, percentage: 0),
    AccountCard(title: 'Main Wallet', amount: 5050, percentage: 35),
    AccountCard(title: 'Savings Wallet', amount: 65, percentage: 5),
    AccountCard(title: 'Summer Wallet', amount: 505, percentage: 7),
    AccountCard(title: 'Spring Wallet', amount: 1505, percentage: 15),
    AccountCard(title: 'Winter Wallet', amount: 105, percentage: -10),
  ];
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.supervised_user_circle),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Accounts',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  Row(
                    children: const [
                      Text('add new'),
                      Icon(Icons.add)
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: card.length,
                itemBuilder: (context,index){
                  int i=random.nextInt(10);
                  if(i==prevIndex){
                   // i=i+1;
                    prevIndex=++i;
                  }else{
                    prevIndex=i;
                  }
                  if(index==0){
                    return proContainer();
                  }
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    margin: const EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          colors[i],
                          colors[i].withOpacity(0.5)
                        ]
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(card[index].title,style: TextStyle(color: Colors.white),),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$${card[index].amount}', style: TextStyle(color: Colors.white),),
                            Text('${card[index].percentage}%',style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          child: LinearProgressIndicator(
                            value: 50,
                            backgroundColor: Colors.grey,
                            color: Colors.lightGreen,
                          ),
                        )
                      ],
                    ),
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget proContainer(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Text('Pro', style: TextStyle(color: Colors.blue),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Upgrade your account', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
              Icon(Icons.arrow_forward, color: Colors.white,)
            ],
          )
        ],
      ),
    );
  }
}
class AccountCard{
  String title='';
  int amount=0;
  int percentage=0;

  AccountCard({required this.title,required this.amount,required this.percentage});
}

