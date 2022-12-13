import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../reusables/suggestion_card.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      'hussein_mohamed',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.add_box_outlined),
                  SizedBox(
                    width: 53,
                  ),
                  Icon(Icons.menu),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 60,
                    width: 60,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/me.jfif',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            '357',
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ),
                        Container(
                          child: Text('Post'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            '731',
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ),
                        Container(
                          child: Text('Followers'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            '137',
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ),
                        Container(
                          child: Text('Following'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 15),
              child: Text(
                'Hussein Mohamed',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 7),
              child: Text(
                '"Soomaaliya Soomaali baa leh"',
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, top: 15),
                  height: 25,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Edit Profile',
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40, top: 15),
                  alignment: Alignment.center,
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(5)),
                  // child: TextButton(
                  //   onPressed: () {},
                  //   child: Icon(
                  //     Icons.arrow_drop_down,
                  //     color: Colors.black,
                  //     size: 15,
                  //   ),
                  child: Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, top: 15),
                  child: Text(
                    'Discover people',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 120, top: 15),
                  child: Text(
                    'See All',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.blue),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Reusable_suggest_card(
                    userName: 'Mohamed Ahmed',
                    profImg:
                        'https://images.pexels.com/photos/2100941/pexels-photo-2100941.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                    message: 'followed by dahir_qacle and two others',
                  ),
                  Reusable_suggest_card(
                    userName: 'Ayan Farah Hassan',
                    profImg:
                        'https://images.pexels.com/photos/14709395/pexels-photo-14709395.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                    message: 'followed by moha_amin and five others',
                  ),
                  Reusable_suggest_card(
                    userName: 'Maryan Abdi Ahmed',
                    profImg:
                        'https://images.pexels.com/photos/13465308/pexels-photo-13465308.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                    message: 'followed by dahir_qacle and moha_amin',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
