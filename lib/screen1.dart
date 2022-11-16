import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class screen1 extends StatelessWidget {

  final String s0='名字   ： 沈宗隆\n'
      '學號   ： C109110168\n'
      '班級   ： 四資三甲\n'
      '課程   ： APP程式設計';

  final String s1='我的名字是沈宗隆，我是資訊工程系三甲學生。'
      '我是印尼僑生來台灣升學。我來台灣因爲我要學電腦與中文。'
      '我來自一個很平凡的小家庭。我的父親是私立公司的普通員工。'
      '我母親是一位家庭主婦。我自己是獨生子所以我沒有同胞兄妹。'
      '因爲本來我是獨生子，所以我是我的父母唯一的希望因爲這個情況，'
      '我一定要辛辛苦苦努力所以可以讓我的父母又驕傲又放心。'
      '所以我決定要去台灣升學爲了學電腦與中文即使我剛來台灣的時，'
      '一個中文詞都不會講也不會寫也不會讀。但是我沒有怕不辭辛苦去。'
      '我也對電腦有興趣，也覺得電腦是我們人生生活的未來。'
      '現在全部事情都用電腦弄，所以我覺得如果不會電腦就是未來會很難。'
      '從高一，高二我已經參加學校的補習班。Pascal是我的第一次學的程式語言。'
      '然後來台灣讀書也繼續學比較難的程式語言，例如C、Java、Python等。'
      '然後現在開始學Dart語言來練習用Android Studio與Flutter寫一個簡單的APP。'
      '我的夢想之一是能夠當一個程式設計師去找好工作，'
      '所以從今我要努力練習讀書爲了把我的夢想成真。'
      '我的其他的夢想是可以回印尼然後做了一個創業，'
      '所以我可以幫助很多人用我的知識。我們生命不是關於我們自己而已，'
      '但也要互相幫忙。這樣子的動作可以讓我知道生命的真實意義。';

  @override
  Widget build(BuildContext context) {

    final player = AudioPlayer();
    player.play(AssetSource("assets/music1.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //Identity Title
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("我的資料",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,
                  fontFamily: 'CircularFont',)),
          ),
          //Autobiography Text
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30), //border corner radius
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
            child:Text(s0,
              style: TextStyle(fontSize: 20),),
          ),

          //================THE BORDER BETWEEN IDENTITY AND AUTOBIOGRAPHY====================

          //Autobiography Title
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("我的簡介",
                style: TextStyle(fontSize:24,
                    fontWeight:FontWeight.bold,
                    fontFamily: 'CircularFont')),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30), //border corner radius
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
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),

          Container(
            color: Colors.redAccent,
            child: Image.asset('images/story.jpg'),
            height: 200,
            width: 300,
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}
