import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:new_mobilek/localization_service.dart';
import 'package:new_mobilek/page_view.dart';
import 'package:new_mobilek/pages/group_trade.dart';
import 'package:new_mobilek/pages/helmet_safety.dart';
import 'package:new_mobilek/pages/news_page.dart';
import 'package:new_mobilek/pages/profile_page.dart';
import 'package:new_mobilek/pages/sanatorium_page.dart';
import 'package:new_mobilek/pages/scale_balanced.dart';
import 'package:new_mobilek/pages/trade_page.dart';

class AppDrawer extends StatefulWidget {
          
          @override
          State<AppDrawer> createState() => new _AppDrawerState();
        }
        
        class _AppDrawerState extends State<AppDrawer> {
          String lng;
          @override
          void initState(){
            super.initState();
            lng = LocalizationService().getCurrentLang();
          }
          @override
          Widget build(BuildContext context) {
            return new Drawer(
              child: Container(
                color: Color.fromARGB(255, 30, 72, 156),
                child: SingleChildScrollView(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildHeader(context),
                    buildMenuItems(context),
                  ],
                  ),
              ),
              ),
              
            );
          }

  Widget buildHeader(BuildContext context)=> Container(
      padding: EdgeInsets.symmetric(horizontal: 0).copyWith(top:15 ,bottom: 3),
      child: Center(
        child: Image.asset('assets/images/icon.png', height: 120,),
      ),
  );
   Widget buildMenuItems(BuildContext context)=> Container(
    
    padding: const EdgeInsets.all(5),
    child: Wrap(
      runSpacing: 10,
      children: [
      ListTile(
        title: new DropdownButton<String>(
          items: LocalizationService.langs.map((String value) {
            return new DropdownMenuItem<String>(value: value, child:Padding(
              padding: EdgeInsets.all(10),
              child: new Text(value, style: TextStyle(color: Colors.white),),), 
            );
          },
          ).toList(),
          value: this.lng,
          dropdownColor: Color.fromARGB(255, 15, 57, 146),
          underline: Container(color: Colors.transparent),
          isExpanded: false,
          onChanged: (newVal){
            setState(() {
              this.lng= newVal;
              LocalizationService().changeLocale(newVal);
            });
          },
        ),
      ),
      ListTile(
        leading: const Icon(FontAwesomeIcons.home, size: 14, color: Colors.white,),
        title: Text("home".tr, style: TextStyle(color: Colors.white),),
        onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PageViewController() ));
              },
      ),
      ListTile(
        leading: const Icon(FontAwesomeIcons.building, size: 14, color: Colors.white,),
        title: Text("sanatorium".tr, style: TextStyle(color: Colors.white)),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  SanatoriumPage()));
              },
      ),
      ListTile(
        leading: const Icon(FontAwesomeIcons.newspaper, size: 14, color: Colors.white,),
        title: Text("news".tr, style: TextStyle(color: Colors.white)),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  NewsPage()));
              },
      ),
      ListTile(
        leading: const Icon(FontAwesomeIcons.check, size: 14, color: Colors.white,),
        title: Text("trade_info".tr, style: TextStyle(color: Colors.white)),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  const NewScreens()));
              },
      ),
      ListTile(
        leading: const Icon(FontAwesomeIcons.peopleGroup, size: 14, color: Colors.white,),
        title: Text("group_trade".tr, style: TextStyle(color: Colors.white)),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  const GroupTrade()));
              },
      ),
      ListTile(
        leading: const Icon(FontAwesomeIcons.helmetSafety, size: 14, color: Colors.white,),
        title: Text("safety_trade".tr, style: TextStyle(color: Colors.white)),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  const HelmetSafety()));
              },
      ),
      ListTile(
        leading: const Icon(FontAwesomeIcons.handHoldingMedical, size: 14, color: Colors.white,),
        title: Text("legal_clinic".tr, style: TextStyle(color: Colors.white)),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ScaleSafety()));
              },
      ),
    ],
    ),
    
  );
        }