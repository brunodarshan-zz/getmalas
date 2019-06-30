import 'package:flutter/material.dart';

class WelcomeCard extends StatelessWidget{

  final item,isActive;

  const WelcomeCard({Key key, this.item, this.isActive}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ratio = (isActive) ? 1.6 : 1.8;
    return Column(
      children: [
        Text(item['label'],
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 0.4),
          fontSize: 32.0,
          fontWeight: FontWeight.w700
            ),),
       Expanded(
         child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(80.0))),
              child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                      children: <Widget>[
                        item['image'],
                        Text(item['description'])
                      ],
                    ),)
                  ),
                ),
       ),
       ),
      ]
    );
  }
}