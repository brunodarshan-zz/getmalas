import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(55, 200, 72, 1.0),
        child: Center(
          child: SvgPicture.asset('assets/Logo.svg')
        )
      )
    );
  }

}