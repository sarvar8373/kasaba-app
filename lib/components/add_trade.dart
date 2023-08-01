import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mobilek/pages/take_trade.dart';

class AddTrade extends StatelessWidget {
  const AddTrade({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          color: Color.fromARGB(255, 30, 72, 156),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Container(
            width: double.infinity,
            height: 136,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffffffff),
               boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 4,
        offset: Offset(4, 8), // Shadow position
      ),],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Text(
                        "add_trade".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 30, 72, 156),
                        ),
                      ),
                    Padding(padding: EdgeInsets.all(10)),
                MaterialButton(
                      onPressed:() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TakeTrade() ));
                },
                      minWidth: double.infinity,
                      height: 50,
                      padding: EdgeInsets.all(4),
                      color: Color.fromARGB(255, 30, 72, 156),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "add_button".tr,
                        style: TextStyle(color: Color(0xffffffff)),),
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }
}