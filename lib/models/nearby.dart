class Nearby {
  final String image;
  final String title;
  final String location;
  final double distance;

  Nearby({
    this.image,
    this.title,
    this.location,
    this.distance,
  });

  static List<Nearby> nearby = [
    Nearby(
      image: "assets/images/fargona.jpg",
      title: "Фарғона вилоятининг Сўх тумани “Сўх” болалар соғломлаштириш оромгоҳи",
      location: "Сўх, Фарғона",
      distance: 0.1,
    ),
    Nearby(
      image: "assets/images/yangiyer.jpg",
      title: "Касаба уюшмалари Федерацияси “Янгиер” санаторийсини ишга туширди",
      location: "Янгиер, Сирдаря",
      distance: 1.6,
    ),
    Nearby(
      image: "assets/images/oqtosh.jpg",
      title: "Ўзбекистон Касаба уюшмалари Федерацияси томонидан “Оқтош” санаторийси",
      location: "Оқтош, Тошкент вилоят",
      distance: 2.2,
    ),
  ];
}
