import 'package:flutter/material.dart';
import 'package:go_job/comon_widgets/raised_btn.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.dstATop),
                image: AssetImage('images/blend.jpg'),
                fit: BoxFit.fill),
          ),
        ),
        Positioned(
            top: 100,
            width: 330,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      'images/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                RaisedBton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Opacity(
                          opacity: 0,
                          child: Image.asset(
                            'images/google-logo.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                        Text('Sign In With Google',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            )),
                        Opacity(
                          opacity: 0,
                          child: Image.asset(
                            'images/google-logo.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ],
                    ),
                    color: Color(0xfff0f0f0),
                    borderRadius: 5,
                    action: () {}),
                SizedBox(height: 15),
                RaisedBton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          'images/facebook-logo.png',
                          height: 30,
                          width: 30,
                        ),
                        Text('Sign In With Facebook',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            )),
                        Image.asset(
                          'images/facebook-logo.png',
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                    color: Color(0xff3b5998),
                    borderRadius: 5,
                    action: () {}),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: RaisedBton(
                      child: Text('Sign In With Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          )),
                      color: Color(0xff218F76),
                      borderRadius: 5,
                      action: () {}),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 1.5,
                        decoration: new BoxDecoration(color: Colors.black87)),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Text(
                        'or',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                        width: 100,
                        height: 1.5,
                        decoration: new BoxDecoration(color: Colors.black87)),
                  ],
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: RaisedBton(
                      child: Text('Go Ananymous',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          )),
                      color: Color(0xffE1DA00),
                      borderRadius: 5,
                      action: () {}),
                ),
              ],
            ))
      ],
    ));
  }
}
