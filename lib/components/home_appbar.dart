import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({ Key key }) : super(key: key);
 @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Color.fromARGB(255, 30, 72, 156),
        title:Image.asset('assets/images/logo2.png', height: 100, width: 100, ),
        centerTitle: true,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: EdgeInsets.only(right: 15, top: 5),
              child: Badge(
                  badgeContent: Text('0', style: TextStyle(color: Color(0xffffffff)),),
                  child: Icon(FontAwesomeIcons.solidBell, size: 18,),
                  badgeColor: Colors.blue,
                ),
            ),
          ),
        ],
      );
  }
   @override
    Size get preferredSize => AppBar().preferredSize; 
}