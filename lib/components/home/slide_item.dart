import 'package:flutter/material.dart';

class SlideItem extends StatelessWidget {
  final slide;

  const SlideItem({Key key, this.slide}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      height: 250.0,
      child: Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Flex(
                  direction: Axis.horizontal,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: slide['image'],
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(slide['title'], textAlign: TextAlign.left, style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w700
                          )),
                          Container(height: 5.0),
                          Text(slide['description'], textAlign: TextAlign.left, style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300
                          ))
                        ],
                      ),
                    )
                  ],
                ),
                ),
              ),
    ),
    );
  }
}
