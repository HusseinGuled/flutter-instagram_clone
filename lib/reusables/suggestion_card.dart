import 'package:flutter/material.dart';

class Reusable_suggest_card extends StatelessWidget {
  Reusable_suggest_card(
      {Key? key,
      required this.profImg,
      required this.userName,
      required this.message})
      : super(key: key);
  String profImg, userName, message;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 10),
      height: 170,
      width: 130,
      decoration: BoxDecoration(
          color: Colors.black12, borderRadius: BorderRadius.circular(5)),
      child: Stack(children: [
        Container(
            margin: EdgeInsets.only(left: 97),
            child: Icon(
              Icons.close,
              color: Colors.black54,
            )),
        Container(
          margin: EdgeInsets.only(
            left: 33,
            top: 15,
          ),
          height: 60,
          width: 60,
          child: ClipOval(
            child: Image.network(
              profImg,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 80, left: 10),
          child: Text(userName,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
        ),
        Container(
          margin: EdgeInsets.only(top: 100, left: 10),
          child: Text(message,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10)),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 135),
          height: 25,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(5)),
          child: TextButton(
            onPressed: (() {}),
            child: Text('Follow', style: TextStyle(color: Colors.white)),
          ),
        )
      ]),
    );
  }
}
