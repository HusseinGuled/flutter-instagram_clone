import 'package:flutter/material.dart';

class Reusable_Notification extends StatelessWidget {
  Reusable_Notification({
    Key? key,
    required this.username,
    required this.userProfImg,
    required this.message,
    required this.date,
  }) : super(key: key);
  String username;
  String userProfImg;
  String message;
  String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 40,
                width: 40,
                child: ClipOval(
                  child: Image.asset(
                    userProfImg,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.only(left: 10),
                child: RichText(
                  textWidthBasis: TextWidthBasis.parent,
                  text: TextSpan(
                    text: username,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(
                        text: message,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  date,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
