// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PackageCard extends StatelessWidget {
  String address;
  String locName;
  String price;
  PackageCard({
    Key? key,
    required this.address,
    required this.locName,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, top: 0),
      padding: const EdgeInsets.only(
        left: 10,
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15)),
      height: 145,
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(address),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 11,
            ),
            SizedBox(
              child: Row(
                children: [
                  Text(
                    locName,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey.shade400,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "₹ $price",
              style: const TextStyle(color: Colors.red),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 18,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "4.8",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "A resort is a place used for \nvacation , relaxation or as a day .",
              style: TextStyle(color: Colors.grey.shade500),
            )
          ]),
        )
      ]),
    );
  }
}
