import 'package:flutter/material.dart';
import 'package:new_mobilek/components/home_appbar.dart';

class LaborCode extends StatefulWidget {
  const LaborCode({ Key key }) : super(key: key);

  @override
  State<LaborCode> createState() => _LaborCodeState();
}

class _LaborCodeState extends State<LaborCode> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Center(
        child: Text(
          'Меҳнат инспексияси',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
     
    );
    }
}