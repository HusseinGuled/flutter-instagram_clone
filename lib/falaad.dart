import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_clone/pages/home_page.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class Falaad extends StatefulWidget {
  Falaad({super.key});

  @override
  State<Falaad> createState() => _FalaadState();
}

class _FalaadState extends State<Falaad> {
  int currentIndex = 0;
  List<Widget> pages = [
    // Text('Page one'),
    HomePage(),
    Text('Page two'),
    Text('Page three'),
    Text('Page four'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [pages[currentIndex]],
      ),
      bottomNavigationBar: SizedBox(
        height: 55,
        child: WaterDropNavBar(
          waterDropColor: Colors.black,
          iconSize: 24,
          bottomPadding: 10,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedIndex: currentIndex,
          barItems: [
            BarItem(filledIcon: Icons.home, outlinedIcon: Icons.home_outlined),
            BarItem(
                filledIcon: Icons.saved_search,
                outlinedIcon: Icons.search_outlined),
            BarItem(
                filledIcon: Icons.add_box,
                outlinedIcon: Icons.add_box_outlined),
            BarItem(
                filledIcon: Icons.favorite,
                outlinedIcon: Icons.favorite_border_outlined),
          ],
        ),
      ),
    );
  }
}
