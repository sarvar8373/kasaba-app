import 'package:flutter/material.dart';
import 'package:new_mobilek/models/nearby.dart';

class SanatoriumBox extends StatelessWidget {
  const SanatoriumBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Nearby.nearby.map((nearby) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 12),
          width: double.infinity,
          height: 204,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xffffffff),
          ),
          child: Row(
            children: [
              Expanded(
                child:ClipRRect( 
                child:Image.asset(nearby.image),
                borderRadius: BorderRadius.circular(12),
                ), 
                ),
                SizedBox(width: 42),
                Expanded(child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(nearby.title, style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2A2B3D),
                      ),),
                    Text(nearby.location, style: TextStyle(
                      color: Color(0xff2A2B3D),
                    ),)
                  ],
                ))
               
            ],
          ),
        );
      }).toList(),
    );
  }
}
