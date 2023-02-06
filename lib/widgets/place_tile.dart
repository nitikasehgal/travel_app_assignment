// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlaceTile extends StatelessWidget {
  String image;
  String placeName;
  String locName;
  Color color;
  VoidCallback ontap;
  PlaceTile({
    Key? key,
    required this.image,
    required this.placeName,
    required this.locName,
    required this.color,
    required this.ontap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: ontap,
        child: Stack(clipBehavior: Clip.none, children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: 178,
              )),
          Container(
            height: 230,
            width: 178,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent.withOpacity(0.1),
                      Colors.black.withOpacity(0.2)
                    ]),
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 4.0)
                ]),
          ),
          Positioned(
              top: 10,
              right: 10,
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(
                  Icons.favorite_outline,
                  color: color,
                ),
              )),
          Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      placeName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.place_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          locName,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 4.2,
                          minRating: 1,
                          itemSize: 13,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          unratedColor: Colors.white,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          "4.2",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
