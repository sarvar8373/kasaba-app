// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:new_mobilek/localization_service.dart';
import 'package:new_mobilek/splash.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  statusBarColor: Color.fromARGB(255, 30, 72, 156),
  ));
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(  
      debugShowCheckedModeBanner: false,
      translations: LocalizationService(),
      locale: Locale('uz', 'UZ'),
      fallbackLocale: Locale('uz', 'UZ'),
      home: MyHomePage(),
    );
  }
}

