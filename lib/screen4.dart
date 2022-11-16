import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';

class screen4 extends StatelessWidget {

  final String guitar = '從小時候，我覺得彈吉他又很酷又有趣。'
      '我在高中的時也有參加吉他補習班，也有參加彈吉他比賽。'
      '我覺得彈吉他蠻有趣，請按這裏為開我分享好吉他的資料。';

  final String youtube = '如果我有空，我很喜歡開YouTube看影片。'
      'YouTube影片讓我可以舒適的休息，也可以在疲憊的一天中娛樂自己。'
      '請安這裏為開YouTube。';

  final String pubg = 'PUBG（絕地求生）是一個多人制大逃殺遊戲。'
      '如果我有空，我常常跟朋友們一起打這游戲。'
      '我覺得這游戲蠻好玩，請按這裏為開PUBG的官方網頁。';

  final String reddit = 'Reddit是一個娛樂、社交及新聞網站，註冊使用者可以將文字或連結在網站上發布，'
      '使它基本上成為了一個電子佈告欄系統。我常常看Reddit找好笑的梗圖或看別人的故事等。'
      '請按這裏為開Reddit的官方網頁。';

  @override
  Widget build(BuildContext context) {

    final player = AudioPlayer();
    player.play(AssetSource("assets/music4.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //Hobbies Title
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("我的興趣",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,
                  fontFamily: 'CircularFont',)),
          ),

          //Directory
          Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
            child: Text("請按圖片為打開官方網頁",
                style: TextStyle(fontSize:20,
                  fontFamily: 'CircularFont',)),
          ),

          //Hobbies 1
          GestureDetector(
            onTap: () => {launch("https://yamahaguitargroup.com/")},
            child:
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
              decoration: BoxDecoration(
                color: const Color(0xff9a9a9a),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.2),
                      BlendMode.dstATop),
                  image: new AssetImage(
                    'images/guitar.jpg',
                  ),
                ),
                borderRadius: BorderRadius.circular(20), //border corner radius
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:
                    ListTile(
                      title: Text('彈吉他'),
                      subtitle: Text(guitar),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Hobbies 2
          GestureDetector(
            onTap: () => {launch("https://www.youtube.com/")},
            child:
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
              decoration: BoxDecoration(
                color: const Color(0xff9a9a9a),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.2),
                      BlendMode.dstATop),
                  image: new AssetImage(
                    'images/youtube.jpg',
                  ),
                ),
                borderRadius: BorderRadius.circular(20), //border corner radius
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:
                    ListTile(
                      title: Text('看YouTube'),
                      subtitle: Text(youtube),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Hobbies 3
          GestureDetector(
            onTap: () => {launch("https://na.battlegrounds.pubg.com/")},
            child:
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
              decoration: BoxDecoration(
                color: const Color(0xff9a9a9a),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.2),
                      BlendMode.dstATop),
                  image: new AssetImage(
                    'images/pubg.jpg',
                  ),
                ),
                borderRadius: BorderRadius.circular(20), //border corner radius
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:
                    ListTile(
                      title: Text('打PUBG游戲'),
                      subtitle: Text(pubg),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Hobbies 4
          GestureDetector(
            onTap: () => {launch("https://www.reddit.com/")},
            child:
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
              decoration: BoxDecoration(
                color: const Color(0xff9a9a9a),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.black.withOpacity(0.2),
                      BlendMode.dstATop),
                  image: new AssetImage(
                    'images/reddit.jpg',
                  ),
                ),
                borderRadius: BorderRadius.circular(20), //border corner radius
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:
                    ListTile(
                      title: Text('看Reddit'),
                      subtitle: Text(reddit),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}