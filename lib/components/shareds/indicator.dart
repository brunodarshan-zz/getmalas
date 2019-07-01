import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final isActive;
  final size;
  final colorActive;

  const Indicator({Key key, this.isActive, this.size = 8.0, this.colorActive = null}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final opacity = (isActive) ? 0.5 : 0.3;
    final color = (isActive && colorActive != null) ? colorActive : Color.fromRGBO(0, 0, 0, opacity);
    return Container(
        margin: EdgeInsets.all(4.0),
        width: size, 
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          color: color,
        ),
        );
  }
}