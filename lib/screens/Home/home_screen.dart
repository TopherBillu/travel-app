import 'package:flutter/material.dart';
import 'package:travelapp/models/place_model.dart';
import 'package:travelapp/screens/Home/widgets/recommended_card.dart';
import 'package:travelapp/screens/details_Screen/detail_screen.dart';
import 'package:travelapp/utilities/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: SafeArea(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
      //     child: Row(
      //       children: [
      //         Icon(
      //           Icons.home,
      //           size: 35,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/prof.jpg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Hello",
                          style: TextStyle(color: GreyBlack, fontSize: 18),
                          children: [
                            TextSpan(
                              text: " ,Tinashe",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: GreyBlack,
                                fontSize: 18,
                              ),
                            ),
                          ]),
                    )
                  ],
                ),
                //This is the Search section
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Explore new Destination",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Material(
                  borderRadius: BorderRadius.circular(100),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search your Destination",
                                prefixIcon: Icon(Icons.search),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 65,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          CategoryCard(
                            press: () {},
                            image: "images/nyanga.jpg",
                            title: "Mountains",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "images/chirindaForest.jpg",
                            title: "Forests",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "images/caves.jpg",
                            title: "Caves",
                          ),
                          CategoryCard(
                            press: () {},
                            image: "images/hwange.jpg",
                            title: "Game Parks",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Container(
                  height: 350,
                  child: ListView.builder(
                      itemCount: places.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 5, right: 15.0),
                          child: Row(
                            children: [
                              RecommendedCard(
                                placeinfo: places[index],
                                press: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailScreen(
                                                placeinfo: places[index],
                                              )));
                                },
                              ),
                            ],
                          ),
                        );
                      })),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title, image;
  final VoidCallback press;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.image,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: press,
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(100),
          child: Container(
            width: 150,
            // height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(image),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(title),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
