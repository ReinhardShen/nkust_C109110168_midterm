import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class screen3 extends StatelessWidget {

  final String laksa = '是由馬來人、華人、娘惹等不同文化混合的美食，不同族群和地方的咖哩叻沙都會有不同，'
      '但是基本的原料是相同的，最大的特色是使用加了椰奶的咖哩湯頭，味道較為濃郁。'
      '一般在中馬、南馬、新加坡及國外地區所稱呼的叻沙多指咖哩叻沙，在北馬及中馬一帶多稱為咖哩麵（Curry Mee）。'
      '咖哩叻沙的配料多使用雞肉絲、豆芽、血蚶、蝦子、雞蛋等，在華人社區的咖哩叻沙會加入豬血、豬皮、燒肉、叉燒等。';

  final String bakkutteh = '肉骨茶混合中藥（枸杞、黨參、當歸、玉竹、川芎）和香料（包括八角茴香、桂皮、丁香、大蒜、甘草、花椒、甘蔗、羅漢果、胡椒）及肉排熬製多個小時的濃湯。'
      '在馬來西亞的一些高級餐館會加入海參和鮑魚一起熬製。肉骨茶通常伴白飯或以油條蘸湯來吃。以醬油、碎紅椒和蒜蓉一起調味。'
      '通常會奉上中式濃茶解油膩。在馬來西亞，肉骨茶是一道典型的早點菜式。';

  final String greentea = '綠茶是茶葉一種，為不發酵茶，是世界上產量最多、最受歡迎的茶類。'
      '其製作過程分為採摘、殺青、揉捻、乾燥，製成的茶葉相較其它茶品較為翠綠，也保有茶葉原始的成份及味道。'
      '綠茶滋味鮮爽，不僅好喝，也被視為對身體有益的飲品。';

  final String lemontea = '檸檬茶的vc可滲透細胞清除毒素及廢物，包括鉛、汞、輻射物、農藥、尿酸、酒精等有害之物質排出體外。'
      '因有生津止渴，化痰止咳，健脾，降糖消渴，鞏固瘦身效果等功效。將檸檬在熱水中稍微浸泡一下，然後切片泡水，添加蜂蜜，醃製在罐子裡，口感更好。';

  @override
  Widget build(BuildContext context) {

    final player = AudioPlayer();
    player.play(AssetSource("assets/music3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //Fav Food Title
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("我最喜歡的食物",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,
                  fontFamily: 'CircularFont',)),
          ),

          //Food 1
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.white,
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
                  child: Image.asset(
                      'images/laksa.jpg',
                      fit:BoxFit.fill

                  ),
                ),
                ListTile(
                  title: Text('咖喱叻沙'),
                  subtitle: Text(laksa),
                ),
              ],
            ),
          ),

          //Food 2
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.white,
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
                  child: Image.asset(
                      'images/bakkutteh.jpg',
                      fit:BoxFit.fill

                  ),
                ),
                ListTile(
                  title: Text('肉骨茶'),
                  subtitle: Text(bakkutteh),
                ),
              ],
            ),
          ),


          //Fav Drink Title
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("我最喜歡的飲料",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,
                  fontFamily: 'CircularFont',)),
          ),

          //Drink 1
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.white,
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
            child:
            Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                      'images/greentea.jpg',
                      fit:BoxFit.fill

                  ),
                ),
                ListTile(
                  title: Text('綠茶'),
                  subtitle: Text(greentea),
                ),
              ],
            ),
          ),

          //Drink 2
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.white,
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
                  child: Image.asset(
                      'images/lemontea.jpg',
                      fit:BoxFit.fill

                  ),
                ),
                ListTile(
                  title: Text('檸檬茶'),
                  subtitle: Text(lemontea),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}