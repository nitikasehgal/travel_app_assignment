import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travel_app_assignment/screens/baga_beach_screen.dart';
import 'package:travel_app_assignment/screens/kuta_beach_screen.dart';
import 'package:travel_app_assignment/screens/place_detail_screen.dart';

import 'screens/home_Screen.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Travel App",
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
