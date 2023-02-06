import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CatergoryRow extends StatelessWidget {
  const CatergoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          height: 60,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.green)),
          child: Row(children: [
            const SizedBox(
              width: 8,
            ),
            Image.asset(
              "assets/images/beach.png",
            ),
            const Text(
              "Beach",
              style: TextStyle(fontSize: 18, color: Colors.black),
            )
          ]),
        ),
        Container(
          height: 60,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey)),
          child: Row(children: [
            const SizedBox(
              width: 8,
            ),
            Image.asset("assets/images/mountain.png"),
            const Text(
              "Mountain",
              style: TextStyle(fontSize: 18),
            )
          ]),
        ),
      ],
    );
  }
}
