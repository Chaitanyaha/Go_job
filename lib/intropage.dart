import 'package:flutter/material.dart';
import 'dart:math';

import './app/sign-in/sign_in_page.dart';

class APage extends StatelessWidget {
  final List<dynamic> msg = [
    'images/msg4.jpg',
    'images/msg2.jpg',
    'images/msg1.jpg',
    'images/msg3.jpg',
    'images/msg5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final int i = Random().nextInt(4);

    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(msg[i]), fit: BoxFit.fill),
              ),
            ),
            Positioned(
              bottom: 20,
              //right: 0.5,
              height: 90,
              width: 90,
              child: Image(
                color: Colors.red,
                image: AssetImage('images/arr.gif'),
              ),
            )
          ],
        ),
        SignIn()
      ],
    ));
  }
}
