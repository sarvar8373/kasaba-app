import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_mobilek/page_view.dart';
import 'package:new_mobilek/pages/profile_page.dart';


class MyHomePage extends StatefulWidget {  
  @override  
  SplashScreenState createState() => SplashScreenState();  
}  
class SplashScreenState extends State<MyHomePage> {  
  @override  
  void initState() {  
    super.initState();  
    Timer(Duration(seconds: 3),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => ProfilePage()  
            )  
         )  
    );  
  }  
  @override  
  Widget build(BuildContext context) {  
    return Container(  
        color: Color.fromARGB(255, 30, 72, 156),  
        child:Image.asset('assets/images/icon.png')  
    );  
  }  
}  