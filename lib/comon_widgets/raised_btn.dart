import 'package:flutter/material.dart';

class RaisedBton extends StatelessWidget {
  RaisedBton({this.child, this.color, this.borderRadius, this.action});

  @required
  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: RaisedButton(
        elevation: 25,
        child: child,
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        onPressed: () => action,
      ),
    );
  }
}
