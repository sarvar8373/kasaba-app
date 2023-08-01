import 'package:flutter/material.dart';
import 'package:new_mobilek/components/home_appbar.dart';
import 'package:new_mobilek/components/navigation_bar.dart';
import 'package:new_mobilek/screens/sanatorium_screen.dart';

class SanatoriumPage extends StatefulWidget {
  const SanatoriumPage({ Key key }) : super(key: key);
  
  @override
  State<SanatoriumPage> createState() => _SanatoriumPageState();
}

class _SanatoriumPageState extends State<SanatoriumPage> {
  int SelectedIndex = 0;
  PageController pageController = PageController();

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SanatoriumScreen(),
      bottomNavigationBar: NavigationBars(SelectedIndex: 1,),
    );
    }
}