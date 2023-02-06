import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(11),
            filled: true,
            fillColor: Colors.grey.shade200,
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 18),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey.shade200))));
  }
}
