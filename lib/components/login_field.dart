import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mobilek/page_view.dart';
class LoginField extends StatelessWidget {
  const LoginField({
    Key key,
     this.nameController,
     this.passwordController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Text(
            'enter'.tr,
            style: TextStyle(
                color:Color.fromARGB(255, 30, 72, 156),
                fontWeight: FontWeight.w500,
                fontSize: 30),
          )),
      Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child:  Text(
            'login'.tr,
            style: TextStyle(fontSize: 20),
          )),
      Container(
        padding: const EdgeInsets.all(10),
        child: TextField(
          controller: nameController,
          decoration:InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'login'.tr,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: TextField(
          obscureText: true,
          controller: passwordController,
          decoration:  InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'password'.tr,
          ),
        ),
      ),
      TextButton(
        onPressed: () {
          //forgot password screen
        },
        
        child: Text('forgot_pass'.tr,),
         style: TextButton.styleFrom(
            primary: Color.fromARGB(255, 30, 72, 156),),
      ),
      
      Container(
          width: double.infinity,
          height: 50,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
            style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 30, 72, 156),),
            child: Text('ent'.tr),
            onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> PageViewController() ));
              },
          )
      ),
      Row(
        children: <Widget>[
          TextButton(
             style: TextButton.styleFrom(
            primary: Color.fromARGB(255, 30, 72, 156),),
            child: Text(
              'registration'.tr,
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              //signup screen
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),],
    );
  }
}