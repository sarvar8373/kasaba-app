import 'package:flutter/material.dart';
import 'package:new_mobilek/components/app_bar.dart';
import 'package:new_mobilek/components/login_field.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key key }) : super(key: key);
  
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
   TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BarApp(),
      body: LoginField(nameController: nameController, passwordController: passwordController),
    );
    }
}