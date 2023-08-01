import 'package:flutter/material.dart';
import 'package:new_mobilek/components/home_appbar.dart';

class GroupTrade extends StatefulWidget {
  const GroupTrade({ Key key }) : super(key: key);

  @override
  State<GroupTrade> createState() => _GroupTradeState();
}

class _GroupTradeState extends State<GroupTrade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Center(
        child: Text(
          'Жамоа келишувлари',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
     
    );
    }
}