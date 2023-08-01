import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_mobilek/components/new_container.dart';
import '../models/slide.dart';


class ListSlider extends StatelessWidget {
  const ListSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.builder(
        itemCount: Slide.slides.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Row( children: [
            Container(
            width: 280,
            height: 320,
            margin: EdgeInsets.only(left: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffffffff),
            ),
            child:
                NewsContainer(image: "assets/images/2055.png", title: "news_1".tr, description: "news_description1".tr,),
          ),
          Container(
            width: 280,
            height: 320,
            margin: EdgeInsets.only(left: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffffffff),
            ),
            child:
                NewsContainer(image: "assets/images/2066.jpg", title: "news_2".tr, description: "news_description1".tr,),
          )
          ],);
        },
      ),
    );
  }
}
