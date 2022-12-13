import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            height: 30,
            width: 280,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(14)),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.only(bottom: 15),
                  hintText: 'Search',
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
