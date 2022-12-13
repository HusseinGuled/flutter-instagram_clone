import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/pages/home_page.dart';
import 'package:instagram_clone/pages/notification.dart';
import 'package:instagram_clone/pages/profile.dart';
import 'package:instagram_clone/pages/search_page.dart';
import 'reusables/post_card.dart';
import 'reusables/story_card';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int currentIndex = 0;
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    NotificationPage(),
    Profile()
  ];
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('Instagram', style: GoogleFonts.lobsterTwo(fontSize: 27)),
        actions: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  right: 20,
                ),
                child: Icon(
                  FontAwesomeIcons.facebookMessenger,
                  size: 19,
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 9, left: 10),
                height: 17,
                width: 15,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
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
                filledIcon: Icons.favorite,
                outlinedIcon: Icons.favorite_border_outlined),
            BarItem(
                filledIcon: Icons.person, outlinedIcon: Icons.person_outlined)
          ],
        ),
      ),
    );
  }
}
