import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../reusables/notification_card.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: Text('Activities',
                  style: TextStyle(fontWeight: FontWeight.w800)),
            ),
            Reusable_Notification(
              username: 'dahir_qacle',
              userProfImg: 'assets/images/Dahir.jpg',
              message: ' shared your post',
              date: '2 d',
            ),
            Reusable_Notification(
              username: 'moah_amin',
              userProfImg: 'assets/images/somflag.jpg',
              message: ' liked your comment: " waad salaaman tahay sxb"',
              date: '5 d',
            ),
            Reusable_Notification(
              username: 'moha.sahal',
              userProfImg: 'assets/images/team.jpg',
              message: ' reacts your post',
              date: '1 w',
            ),
            Reusable_Notification(
              username: 'dahir_qacle',
              userProfImg: 'assets/images/Dahir.jpg',
              message: ' liked your post',
              date: '2 w',
            ),
            Reusable_Notification(
              username: 'moha_amin',
              userProfImg: 'assets/images/somflag.jpg',
              message: ' shared your post',
              date: '3 w',
            ),
            Reusable_Notification(
              username: 'moha.sahal',
              userProfImg: 'assets/images/team.jpg',
              message: ' shared your post',
              date: '4 w',
            ),
            Reusable_Notification(
              username: 'dahir_qacle',
              userProfImg: 'assets/images/Dahir.jpg',
              message: ' liked your post',
              date: '2 w',
            ),
            Reusable_Notification(
              username: 'moha_amin',
              userProfImg: 'assets/images/somflag.jpg',
              message: ' shared your post',
              date: '3 w',
            ),
            Reusable_Notification(
              username: 'moha.sahal',
              userProfImg: 'assets/images/team.jpg',
              message: ' shared your post',
              date: '4 w',
            ),
          ],
        ),
      ),
    );
  }
}
