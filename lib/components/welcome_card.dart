import 'package:flutter/material.dart';
import 'package:getmalas/utils/colors.dart';

class WelcomeCard extends StatelessWidget{

  final item,isActive;

  const WelcomeCard({Key key, this.item, this.isActive}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var content = (isActive) ? cardContent() : cardInBackground();
    var ratioSize = (isActive) ? 0.65 : 0.5 ;
    return Center(
      child: SizedBox(
        height:  MediaQuery.of(context).size.height*ratioSize,
        width: MediaQuery.of(context).size.width*0.75,
        child: content,
      ),
    );
  }

  Widget cardInBackground(){
    return Opacity(
      opacity: 0.2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
      )
    );
  }

  Widget cardContent() {
    final descriptionStyle =  TextStyle(
      fontSize: 16.0,
      color: Color.fromRGBO(0, 0, 0, 0.4) 
    );
    return Card(
           child: Padding(
             padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
             child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                         item['image'],
                         Container(height: 40.0,),
                         Text(item['description'], style: descriptionStyle,textAlign: TextAlign.center)
                       ],
           ),
           ),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(15.0)
           ),
         );
  }
}