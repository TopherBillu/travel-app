class Placeinfo {
  final String location, image, name, desc;
  final int distance, days;

  Placeinfo(
      {required this.location,
      required this.image,
      required this.name,
      required this.desc,
      required this.distance,
      required this.days});
}

List places = [
  Placeinfo(
    image: 'images/caves.jpg',
    name: 'Chinhoyi Caves',
    location: 'Chinhoyi',
    desc:
        'Chinhoyi Caves. The Wonder Hole , is the main feature of the caves which is in fact a “swallow hole” or a large cavern with a collapsed roof.',
    distance: 20,
    days: 10,
  ),
  Placeinfo(
    image: 'images/victoriaFalls.jpg',
    name: 'Victoria Falls',
    location: 'Victoria Falls',
    desc:
        'Victoria Falls is a waterfall on the Zambezi River in southern Africa, which provides habitat for several unique species of plants and animals.',
    distance: 686,
    days: 10,
  ),
  Placeinfo(
    image: 'images/Great-Zimbabwe-Ruins.jpg',
    name: 'Great Zimbabwe',
    location: 'Masvingo',
    desc:
        'Great Zimbabwe is a medieval city in the south-eastern hills of Zimbabwe near Lake Mutirikwi and the town of Masvingo',
    distance: 439,
    days: 10,
  ),
  Placeinfo(
    image: 'images/hwange.jpg',
    name: 'Hwange National Park',
    location: 'Hwange',
    desc:
        'Hwange National Park (formerly Wankie Game Reserve) is the largest natural reserve in Zimbabwe. It is around 14,600 sq km in area',
    distance: 540,
    days: 10,
  )
];
