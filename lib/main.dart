import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:classpractice/InformationStore/story_data.dart';
import 'package:classpractice/Server_Connection/post_request.dart';

void main()=> runApp(Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Roboto Mono", primaryColor: Colors.grey[100]),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic post=[];
  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    getData();
  }
  getData() async{
    String jsondata=await PostSerializer.getJsonData(10);
    post=jsonDecode(jsondata);
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    print(size.width);
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                    'Instagram',
                    style: TextStyle(
                      fontFamily: "Dancing Script",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Stack(
                          children: [
                            const FaIcon(FontAwesomeIcons.heart,size: 20,),
                            Positioned(
                              top: 3,
                              right: -1,
                              child: Container(
                                width: 7,
                                height: 7,
                                decoration: const BoxDecoration(
                                  color: Colors.redAccent,
                                  shape: BoxShape.circle
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: const FaIcon(FontAwesomeIcons.facebookMessenger,size: 20,)
                    )
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border(
                bottom: BorderSide(width: 1,color: Colors.grey.shade200)
              )
            ),
          )
          ,),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(top: 10,bottom: 10),
                padding: EdgeInsets.only(left: (size.width/100)*0.3),
                height: (size.width/100)*31.828703703703701861764831961591,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1,color: Colors.grey.shade200))
                ),
                child: ListView.builder(
                  itemCount: stories.length,
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                    return Story(name: stories[index].name, size: size, isActive: stories[index].isActive, imageUrl: stories[index].imageUrl);
                    }
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                  //posts
                    (context,index){
                      return Post(customkey: post[index]['id'], profileImage: post[index]['urls']['thumb'], comment: post[index]['downloads'], caption: post[index]['exif']['name'], postImage: post[index]['urls']['regular'], profileName: post[index]['user']['name'], time: post[index]['created_at'], likes: post[index]['likes'],);
                    },
                  childCount: post.length,
                )
            )
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border(
              top: BorderSide(width: 1, color: Colors.grey.shade200)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
              FaIcon(FontAwesomeIcons.home),
              FaIcon(FontAwesomeIcons.search),
              FaIcon(FontAwesomeIcons.plusSquare),
              FaIcon(FontAwesomeIcons.shoppingBag),
              FaIcon(FontAwesomeIcons.userCircle)
            ],
          ),
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  Size size;
  String imageUrl='';
  String name='';
  bool isActive=false;
  Story({Key? key, required this.name,required this.size,required this.isActive,required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: (size.width/100)*2.50),
      //color: index%2==0?Colors.lightBlue: Colors.greenAccent,
      width: MediaQuery.of(context).size.width/4,
      height: MediaQuery.of(context).size.width/12.75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: (MediaQuery.of(context).size.width/4)/2.7,
              backgroundColor: Colors.white,
            ),
            decoration: isActive?BoxDecoration(
                border: Border.all(width: 2,color: Colors.redAccent),
                shape: BoxShape.circle
            ):null,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 10,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}

class Post extends StatefulWidget {
  String customkey;
  String profileImage;
  String profileName;
  String postImage;
  String caption;
  int comment;
  String time;
  int likes;


  Post({Key? key, required this.customkey, required this.profileImage,required this.comment, required this.caption,required this.postImage,required this.profileName,required this.time, required this.likes}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      key: Key(widget.customkey),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(widget.profileImage),
                      ),
                    ),
                    Text(widget.profileName)
                  ],
                ),
              ),
              const Icon(Icons.more_vert)
            ],
          ),
          Image(image: NetworkImage(widget.postImage),),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: FaIcon(FontAwesomeIcons.heart),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: FaIcon(FontAwesomeIcons.comment),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: FaIcon(FontAwesomeIcons.paperPlane),
                    )
                  ],
                ),
                const Icon(Icons.badge)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
            child: Text("${widget.likes}"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
            child: Text(widget.caption),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
            child: Text("view all ${widget.comment} comments"),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(widget.profileImage),
                    ),
                    Text("Add a comment")
                  ],
                ),
                Row(
                  children: const [
                    FaIcon(FontAwesomeIcons.heart),
                    FaIcon(FontAwesomeIcons.handRock)
                  ],
                )
              ],
            ),
          ),
          Text("${widget.time} hours ago")

        ],
      ),
    );
  }
}


