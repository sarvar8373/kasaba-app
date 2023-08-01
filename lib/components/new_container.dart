import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({
    Key key, this.image, this.title, this.description
  }) : super(key: key);
  final String image;
  final  String title;
  final  String description;
  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(image),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // Slide.slides[index].title,
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xff2A2B3D),
                    ),
                  ),
                  SizedBox(height: 4),
                  Column(
                    children: [
                      Text(
                        description,
                         overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: TextStyle(
                          color: Color(0xffB7B7B7),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
       
      ],
    );
  }
}