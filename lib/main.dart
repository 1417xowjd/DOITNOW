// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.jpeg') //배경화면
          )
        ),
        child: Column(
          children:
          [Flexible(flex: 2, child: Container( width: 100, height: 180,),),
            Flexible(
                flex: 2,
            child: Container(padding: const EdgeInsets.only(left: 30.0),
            width: 420,
            height: 500,
            child: const Text(
              '''나를 가꾸는
행복의 시간''',  style: TextStyle(fontSize: 35, color:Colors.white, fontFamily: "Yonolja", ),),
                ),//배경글자
              ),
            Flexible(flex: 5, child: Container(width: 100, height: 500,),),
            Flexible(flex: 1, child: TextButton.icon(
                onPressed: () {},
                label: Text('카카오톡으로 시작하기', ),
                icon: Icon(Icons.favorite),
                style: TextButton.styleFrom(primary: Colors.black,
                  backgroundColor: Colors.yellow,
                  minimumSize: Size(360, 35),)
            ),
            ),
            Flexible(flex: 1 , child: TextButton.icon(
              onPressed: () {},
              label: Text('Apple로 시작하기', ),
              icon: Icon(Icons.favorite),
              style: TextButton.styleFrom(primary: Colors.white,
                backgroundColor: Colors.black,
              minimumSize: Size(360, 35),)
            ),
            ),
            Flexible(flex: 1 , child: TextButton.icon(
              onPressed: () {},
              label: Text('다른 방법으로 시작하기', ),
              icon: Icon(Icons.add),
              style: TextButton.styleFrom(primary: Colors.white,
              minimumSize: Size(330, 35),
              textStyle: TextStyle(  decoration: TextDecoration.underline)),
            ),
            ),
          ],// 아이콘 배치
        ),
      ),
      );
  }
}

