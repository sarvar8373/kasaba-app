import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mobilek/components/home_appbar.dart';

class ScaleSafety extends StatefulWidget {
  const ScaleSafety({ Key key }) : super(key: key);

  @override
  State<ScaleSafety> createState() => _ScaleSafetyState();
}

class _ScaleSafetyState extends State<ScaleSafety> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Center(
        child: Text(
          "legal_clinic".tr,
          style: TextStyle(fontSize: 24.0),
        ),
      ),
     
    );
    }
}