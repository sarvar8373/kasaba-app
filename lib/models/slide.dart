import 'package:get/get.dart';

class Slide {
  final String image;
  final String title;
  final String description;
  final double date;

  Slide({
     this.image,
     this.title,
     this.description,
     this.date,
  });

  static List<Slide> slides = [
    Slide(
      image: "assets/images/2055.png",
      title: "news_1".tr,
      description: "news_description1".tr,
      date: 4.9,
    ),
    Slide(
      image: "assets/images/2066.jpg",
      title: "news_2".tr,
      description: "news_description1".tr,
      date: 4.8,
    ),
  ];
}
