import 'package:flutter/material.dart';
import 'package:travelapp/models/place_model.dart';
import 'package:travelapp/utilities/color.dart';

class DetailScreen extends StatefulWidget {
  final Placeinfo placeinfo;
  const DetailScreen({super.key, required this.placeinfo});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            widget.placeinfo.image,
            width: double.infinity,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(100),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: PrimaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Center(
                                child: Icon(
                                  Icons.bookmark_rounded,
                                  color: PrimaryColor,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    // height: 20,
                  ),
                  Container(
                    // height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.placeinfo.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: PrimaryColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.placeinfo.location,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Trip Details",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.placeinfo.desc,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Divider(
                            height: 8,
                            color: GreyBlack,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                "Duration",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${widget.placeinfo.days} days",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Text(
                                "Distance",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${widget.placeinfo.distance} Kilometers",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          MaterialButton(
                            minWidth: double.infinity,
                            color: PrimaryColor,
                            height: 55,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            onPressed: () {},
                            child: Text("Book trip"),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
