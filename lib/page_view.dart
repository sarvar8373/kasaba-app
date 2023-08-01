import 'package:flutter/material.dart';
import 'package:new_mobilek/app_drawer.dart';
import 'package:new_mobilek/components/home_appbar.dart';
import 'package:new_mobilek/components/navigation_bar.dart';
import 'package:new_mobilek/screens/home_screen.dart';
import 'package:new_mobilek/screens/news_screen.dart';
import 'package:new_mobilek/screens/sanatorium_screen.dart';

class PageViewController extends StatefulWidget {
  PageViewController({Key key}) : super(key: key);

  @override
  State<PageViewController> createState() => _PageViewControllerState();
}

class _PageViewControllerState extends State<PageViewController> {
  int SelectedIndex = 0;
  PageController pageController = PageController();
  List<Widget> pages = [
    HomeScreen(),
    SanatoriumScreen(),
    NewScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      backgroundColor: Color(0xffFBFBFB),
      appBar: HomeAppBar(),
      body: PageView(
        controller: pageController,
        onPageChanged: (index){
          setState(() {
            SelectedIndex = index;
          });
        },
        children: pages,
      ),
      
      bottomNavigationBar: NavigationBars(
        SelectedIndex: SelectedIndex, 
        onTap: (index) {
          setState(() {
            SelectedIndex = index;
          });
          pageController.animateToPage(index, duration: Duration(milliseconds: 500),  curve: Curves.ease);
        },
        ),

        
    );
    
  }
  
}


