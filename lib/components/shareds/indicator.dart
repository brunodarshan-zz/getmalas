import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final isActive;

  const Indicator({Key key, this.isActive}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final opacity = (isActive) ? 0.5 : 0.3;
    return Container(
        margin: EdgeInsets.all(4.0),
        width: 10.0, 
        height: 10.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          color: Color.fromRGBO(0, 0, 0, opacity),
        ),
        );
  }
}