import 'package:flutter/material.dart';
import 'data.dart';
void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  @override
  Widget build(BuildContext context) {
    final Size screenSize= MediaQuery.of(context).size;
    return Scaffold(

      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                margin: EdgeInsets.symmetric(horizontal: screenSize.width/20),
                width: screenSize.width,
                height: screenSize.width/1.5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.menu),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                      radius: 30,
                    ),
                    const SizedBox(height: 20,),
                    const Text('Hira Diaz'),
                    const SizedBox(height: 10,),
                    const Text(
                      'Ux/Ui Designer',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(height: 35,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                              children: const [
                                Text('8900'),
                                Text('Income')
                              ]
                          ),
                          const VerticalDivider(
                            width: 20,
                            color: Colors.green,
                          ),
                          Column(
                              children: const [
                                Text('5500'),
                                Text('Expenses')
                              ]
                          ),
                          const VerticalDivider(
                            width: 20,
                            color: Colors.grey,
                          ),
                          Column(
                              children: const [
                                Text('890'),
                                Text('Loan')
                              ]
                          )
                        ]
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text('Overview'),
                        Icon(Icons.notifications)
                      ],
                    ),
                    const Text('sept 13,2020')
                  ],
                ),
              ),
              Container(
                // color: Colors.red,
                height: 320,
                width: screenSize.width,
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index){
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        children: [
                          Icon(users[index].icon,),
                          Column(
                            children: [
                              Text(users[index].title),
                              Text(users[index].subTitle)
                            ],
                          ),
                          Text(users[index].amount),
                        ],
                      ),
                    );
                  },

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}