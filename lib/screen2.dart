import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class screen2 extends StatelessWidget {

  final String c1 = '課程：計算機概論\n'
      '種類：必修課\n'
      '教室：育501\n'
      '時間：禮拜一（第2節-第4節）';

  final String c2 = '課程：APP程式設計（一）\n'
      '種類：選修課\n'
      '教室：資002\n'
      '時間：禮拜一（第5節-第7節）';

  final String c3 = '課程：數位邏輯程式設計\n'
      '種類：必修課\n'
      '教室：育501\n'
      '時間：禮拜二（第2節-第4節）';

  final String c4 = '課程：資料庫\n'
      '種類：必修課\n'
      '教室：育501\n'
      '時間：禮拜二（第5節-第7節）';

  final String c5 = '課程：作業系統\n'
      '種類：必修課\n'
      '教室：育501\n'
      '時間：禮拜三（第2節-第4節）';

  final String c6 = '課程：演算法\n'
      '種類：必修課\n'
      '教室：育501\n'
      '時間：禮拜四（第2節-第4節）';

  final String c7 = '課程：核心生命與倫理\n'
      '種類：選修通識課\n'
      '教室：土308\n'
      '時間：禮拜四（第7節-第8節）';

  final String c8 = '課程：網路資料庫程式設計\n'
      '種類：選修課\n'
      '教室：資002\n'
      '時間：禮拜五（第7節-第8節）';

  @override
  Widget build(BuildContext context) {

    final player = AudioPlayer();
    player.play(AssetSource("assets/music2.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //Class Title
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("我的111年課表",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,
                  fontFamily: 'CircularFont',)),
          ),


          //Class 1
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.red[200],
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
            child:Text(c1,
              style: TextStyle(fontSize: 20),),
          ),

          //Class 2
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.cyan[200],
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
            child:Text(c2,
              style: TextStyle(fontSize: 20),),
          ),

          //Class 3
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.purple[200],
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
            child:Text(c3,
              style: TextStyle(fontSize: 20),),
          ),

          //Class 4
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.yellow[200],
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
            child:Text(c4,
              style: TextStyle(fontSize: 20),),
          ),

          //Class 5
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.blue[200],
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
            child:Text(c5,
              style: TextStyle(fontSize: 20),),
          ),

          //Class 6
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.green[300],
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
            child:Text(c6,
              style: TextStyle(fontSize: 20),),
          ),

          //Class 7
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.orange[200],
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
            child:Text(c7,
              style: TextStyle(fontSize: 20),),
          ),

          //Class 8
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.brown[200],
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
            child:Text(c8,
              style: TextStyle(fontSize: 20),),
          ),

        ],
      ),
    );
  }
}