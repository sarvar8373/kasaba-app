import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetTitle extends StatelessWidget {
  const SetTitle({
    Key key, this.title,
  }) : super(key: key);

 final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10).copyWith(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Text(
            title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700
        ),
        ),
        InkWell(
          onTap: () {},
          child: Text("look_more".tr,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xff4E82EA),
          ),
          ),
        )
        ]
         
        ),
      );
  }
}