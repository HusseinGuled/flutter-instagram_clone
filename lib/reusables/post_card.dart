import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Reusable_post extends StatelessWidget {
  Reusable_post({
    Key? key,
    required this.username,
    required this.userProfImg,
    required this.postImg,
    required this.postText,
    required this.likes,
    required this.date,
  }) : super(key: key);
  String username;
  String userProfImg;
  String postImg;
  String postText;
  String likes;
  String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 7),
              padding: EdgeInsets.all(1.7),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1.2, color: Colors.red),
              ),
              child: ClipOval(
                child: Image.asset(userProfImg,
                    height: 40, width: 40, fit: BoxFit.cover),
              ),
            ),
            Container(margin: EdgeInsets.only(left: 10), child: Text(username)),
            Container(
                margin: EdgeInsets.only(left: 145),
                child: Icon(Icons.more_vert))
          ]),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 200,
            width: 450,
            child: Image.network(
              postImg,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 7),
            child: Row(children: [
              Container(
                  margin: EdgeInsets.only(left: 7),
                  child: Icon(Icons.favorite_outline)),
              Container(
                  margin: EdgeInsets.only(left: 7),
                  child: Icon(FontAwesomeIcons.comment)),
              Container(
                  transform: Matrix4.rotationX(0),
                  margin: EdgeInsets.only(left: 7),
                  child: Icon(Icons.near_me_outlined)),
              Container(
                  margin: EdgeInsets.only(left: 170),
                  child: Icon(Icons.bookmark_outline)),
            ]),
          ),
          Container(
            margin: EdgeInsets.only(left: 7, top: 7),
            child: Text(likes, style: TextStyle(fontWeight: FontWeight.w700)),
          ),
          Container(
            margin: EdgeInsets.only(left: 7),
            child: RichText(
              text: TextSpan(
                  text: username,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: postText,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 7,
                  ),
                  height: 30,
                  width: 30,
                  child: ClipOval(child: Image.asset('assets/images/me.jfif')),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 7,
                  ),
                  height: 30,
                  width: 240,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'add a comment....       ❤️🤷‍♀️🔥',
                        contentPadding: EdgeInsets.only(bottom: 17, left: 5),
                        border: InputBorder.none),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 7, top: 7),
            child: Text(date, style: TextStyle(fontSize: 9)),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
