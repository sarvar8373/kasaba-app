import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({ Key key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22).copyWith(bottom: 12, top: 12),
            child: Text("news".tr),
            ),
          ],
      ),
      
    );
  }
  }