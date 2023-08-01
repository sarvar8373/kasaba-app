import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mobilek/components/home_appbar.dart';
import 'package:new_mobilek/components/search_section_title.dart';

class TakeTrade extends StatefulWidget {
  const TakeTrade({ Key key }) : super(key: key);

  @override
  State<TakeTrade> createState() => _TakeTradeState();
}

class _TakeTradeState extends State<TakeTrade> {
  int _value = 1;
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 14).copyWith(top: 12, bottom: 12), 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchSetionTitle(title: "Сиз касаба уюшмалари аъзомисиз ?",),
          Row(
            
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              Row(
            children: [
              Radio(
              value: 1, 
              groupValue: _value, 
              onChanged: (value){
                setState(() {
                  _value = value;
                });
              }
              ),
              Text("Ха"),
              ],),
              SizedBox(width: 20,),
          Row(
            children: [
              Radio(
              value: 2, 
              groupValue: _value, 
              onChanged: (value){
                setState(() {
                  _value = value;
                });
              }
              ),
              Text("Йўқ"),
              ],),          ],)
          
      ]
      ), ) 
      
     
    );
  }
}