import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SanatoriumLoc extends StatelessWidget {
  const SanatoriumLoc({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22).copyWith(bottom: 12, top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "loc_uz".tr,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xffB7B7B7),
            ), 
            ),
            Text.rich(
              TextSpan(text: "sanatorium".tr ,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff2A2830),
              ),
              children: [
                TextSpan(
                  text: " " + "uz".tr,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                    color: Color(0xff2A2830)
                  )
                )
              ],
              ),
            ),
        ]),
    );
  }
}