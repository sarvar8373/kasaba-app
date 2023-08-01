import 'package:flutter/material.dart';
import 'package:new_mobilek/components/home_appbar.dart';
import 'package:new_mobilek/components/navigation_bar.dart';
import 'package:new_mobilek/screens/news_screen.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({ Key key }) : super(key: key);
  
  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int SelectedIndex = 0;
  PageController pageController = PageController();

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: NewScreen(),
      bottomNavigationBar: NavigationBars(SelectedIndex: 2,),
    );
    }
}