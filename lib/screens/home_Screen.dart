import 'package:flutter/material.dart';
import 'package:travel_app_assignment/screens/kuta_beach_screen.dart';
import 'package:travel_app_assignment/widgets/category_row.dart';
import 'package:travel_app_assignment/widgets/place_tile.dart';
import 'package:travel_app_assignment/widgets/search_bar.dart';
import 'package:travel_app_assignment/widgets/top_bar.dart';

import '../widgets/package_card.dart';
import 'baga_beach_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const TopBar(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Where do you \nwant to explore today?",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w600, letterSpacing: 1),
            ),
            const SizedBox(
              height: 18,
            ),
            const SearchBar(),
            const SizedBox(
              height: 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Choose Category",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            const CatergoryRow(),
            const SizedBox(
              height: 15,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 230,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  PlaceTile(
                    image: "assets/images/kuta_beach.png",
                    placeName: "Kuta Beach",
                    locName: "Bali,Indonesia",
                    color: Colors.red,
                    ontap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return KutaBeachDetailScreen();
                      }));
                    },
                  ),
                  PlaceTile(
                    image: "assets/images/baga_beach.png",
                    placeName: "Baga Beach",
                    locName: "Goa,India",
                    color: Colors.black,
                    ontap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return BagaBeachDetailScreen();
                      }));
                    },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Popular Package",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "See All",
                  style: TextStyle(color: Colors.grey.shade500),
                )
              ],
            ),
            ListView(shrinkWrap: true, children: [
              PackageCard(
                address: "assets/images/kuta_resort.png",
                locName: "Kuta Resort            ",
                price: "20,000",
              ),
              PackageCard(
                address: "assets/images/baga_beach_resort.png",
                locName: "Baga Beach Resort",
                price: "15,000",
              ),
            ]),
          ],
        ),
      ),
    ));
  }
}
