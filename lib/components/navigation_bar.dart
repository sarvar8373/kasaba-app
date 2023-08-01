import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class NavigationBars extends StatelessWidget {
  const NavigationBars({
    Key key,
     this.SelectedIndex, 
     this.onTap,
  }) : super(key: key);

  final int SelectedIndex;
  final ValueChanged onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xffffffff),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color.fromARGB(255, 30, 72, 156),
      unselectedItemColor: Color(0xffD8D8D8),
      elevation: 0,
      currentIndex: SelectedIndex,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        ),
      onTap: onTap,
      items: [
      BottomNavigationBarItem(icon: Icon(
        FontAwesomeIcons.home, 
        size: 18, 
        ),
        label: "home".tr
        ),
      BottomNavigationBarItem(icon: Icon(
        FontAwesomeIcons.building, 
        size: 18, 
        ),
        label: "sanatorium".tr
        ),
        BottomNavigationBarItem(icon: Icon(
        FontAwesomeIcons.newspaper, 
        size: 18, 
        ),
        label: "news".tr
        )
      ]);
  }
}
