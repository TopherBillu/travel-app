import 'package:flutter/material.dart';

import '../../../models/place_model.dart';
import '../../../utilities/color.dart';

class RecommendedCard extends StatelessWidget {
  final Placeinfo placeinfo;
  final VoidCallback press;

  const RecommendedCard({
    Key? key,
    required this.placeinfo,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(placeinfo.image),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  placeinfo.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: PrimaryColor,
                    ),
                    Text(placeinfo.location),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
