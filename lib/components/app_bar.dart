import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarApp extends StatelessWidget implements PreferredSizeWidget {
  const BarApp({ Key key }) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Color.fromARGB(255, 30, 72, 156),
        title:Image.asset('assets/images/logo2.png', height: 100, width: 100, ),
        centerTitle: true,
        elevation: 0,
      );
  }
   @override
    Size get preferredSize => AppBar().preferredSize; 
}