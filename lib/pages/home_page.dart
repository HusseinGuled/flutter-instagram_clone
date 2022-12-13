import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../reusables/post_card.dart';
import '../reusables/story_card';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset('assets/images/me.jfif',
                            height: 40, width: 40, fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 45, top: 35),
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.2, color: Colors.white),
                          color: Colors.blue,
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        size: 13,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 50),
                      child: Text(
                        'Your story',
                        style: GoogleFonts.zenKakuGothicAntique(
                          fontSize: 13,
                        ),
                      ),
                    )
                  ],
                ),
                Reusable_Story(
                  userProfImg: 'assets/images/Dahir.jpg',
                  username: 'dahir_qacle',
                ),
                Reusable_Story(
                  userProfImg: 'assets/images/team.jpg',
                  username: 'moha.sahal',
                ),
                Reusable_Story(
                  userProfImg: 'assets/images/somflag.jpg',
                  username: 'moha_amiin',
                ),
                Reusable_Story(
                  userProfImg: 'assets/images/code.jpeg',
                  username: 'zakama',
                ),
                Reusable_Story(
                  userProfImg: 'assets/images/somflag.jpg',
                  username: 'ayan_farah',
                ),
              ]),
            ),
          ),
          Divider(color: Colors.black26),
          Reusable_post(
            username: 'dahir_qacle',
            userProfImg: 'assets/images/Dahir.jpg',
            postImg:
                'https://images.pexels.com/photos/11719056/pexels-photo-11719056.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            postText: ' Jimco wanaagsan saaxiibayaal',
            likes: '71 Likes',
            date: '1 December',
          ),
          Reusable_post(
            username: 'moha_amin',
            userProfImg: 'assets/images/somflag.jpg',
            postImg:
                'https://images.pexels.com/photos/10255612/pexels-photo-10255612.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            postText: ' Quruxda buuraleyda Sanaag',
            likes: '97 Likes',
            date: '29 November',
          ),
          Reusable_post(
            username: 'moha.sahal',
            userProfImg: 'assets/images/team.jpg',
            postImg:
                'https://images.pexels.com/photos/440731/pexels-photo-440731.jpeg?auto=compress&cs=tinysrgb&w=600',
            postText:
                ' Dhulkeena barwaaqada ah wax kastana lagu beeri karo ayaan ka baahannahay',
            likes: '1k Likes',
            date: '25 November',
          ),
        ]),
      ),
    );
  }
}
