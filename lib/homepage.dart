import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {

  Future<FirebaseUser> _signInAnonymously() async {
    final authResult =await FirebaseAuth.instance.signInAnonymously();
      print(authResult.user);
      return(authResult.user);
  }

  List<dynamic> img = [
    AssetImage('images/img1.jpg'),
    AssetImage('images/img2.jpg'),
    AssetImage('images/img3.png'),
    AssetImage('images/img4.jpg'),
  ];
  List<String> msg = [
    'Expert Selected Portfolios',
    '100% Paperless Process',
    'High Security',
    'Create Account for free and avail benifits'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFf0f0f0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(25),
            ),
            Text(

              'Welcome to',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image(
              image: AssetImage(
                'images/logo.png',
              ),
              width: 200,
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Swiper(
              itemCount: img.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  borderOnForeground: false,
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: img[index],
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(msg[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xff22242a),
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          )),
                    ],
                  ),
                );
              },
              layout: SwiperLayout.CUSTOM,
              customLayoutOption:
                  new CustomLayoutOption(startIndex: 0, stateCount: 3)
                      .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                new Offset(-370.0, -40.0),
                new Offset(0.0, 0.0),
                new Offset(370.0, -40.0)
              ]),
              itemWidth: 310.0,
              itemHeight: 330.0,
              autoplay: true,
              autoplayDelay: 3000,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        child: Icon(Icons.keyboard_arrow_right),
        backgroundColor: Color(0xff2595c7),
        onPressed: ()  => _signInAnonymously(),
        //Navigator.of(context).pushNamed('/a'),
      ),
    );
  }
}
