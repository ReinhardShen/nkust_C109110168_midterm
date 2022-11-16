import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:url_launcher/url_launcher.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100], //background color of the app main section
        appBar: AppBar(title: Text('期中考作業 Midterm Project',
          style: TextStyle(
              fontWeight:FontWeight.bold,
              fontFamily: 'CircularFont'),),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    const Color(0xFF4F7942),
                    const Color(0xFF4CBB17),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
          ),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: '自傳',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
              label: '讀書',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.fastfood),
              label: '飲食',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.wine_bar),
              label: '興趣',
            ),
          ],
          onTap: (index) { setState(() {
            _currentindex=index;
            if (index==2) {
              player.play(AssetSource("assets/music2.mp3"));
            }else if (index==3) {
              player.play(AssetSource("assets/music3.mp3"));
            }else if (index==4) {
              player.play(AssetSource("assets/music4.mp3"));
            }
          });
          },
        ),
      ),
    );
  }
}

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

    player.play(AssetSource("music1.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //Identity Title
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("我的資料",
                style: TextStyle(fontSize:24,
                    fontWeight:FontWeight.bold,
                    fontFamily: 'CircularFont')),
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
            child:Text(s1,
              style: TextStyle(fontSize: 20),),
          ),

          //The "my story" picture
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

    player.play(AssetSource("music2.mp3"));

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

    player.play(AssetSource("music3.mp3"));

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

class screen4 extends StatelessWidget {

  final String guitar = '從小時候，我覺得彈吉他又很酷又有趣。'
      '我在高中的時也有參加吉他補習班，也有參加彈吉他比賽。'
      '我覺得彈吉他蠻有趣，這裏我要分享好吉他的資料。';

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

    player.play(AssetSource("music4.mp3"));

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
                style: TextStyle(fontSize:15,
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
