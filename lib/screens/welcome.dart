import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:getmalas/components/shareds/indicators.dart';
import 'package:getmalas/components/welcome_card.dart';
import 'package:getmalas/utils/colors.dart';
import 'package:getmalas/utils/texts.dart';

class Welcome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelcomeState();
  }

}

class WelcomeState extends State<Welcome> {
  int cardIndex = 0;
  PageController cardsController = PageController(viewportFraction: 0.8, initialPage: 0);

  final steps = wellcomeSteps;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.colorDefault,
        child: Flex(
          children: <Widget>[
           head(),
           cards(context),
           indicators(),
           actionButtons()
          ], direction: Axis.vertical,
        ),
      ),    
    );
  }
          
  void _pageChanged(int value) {
     setState((){
      cardIndex = value;
    });
  }

  head(){
    final txtStyle = TextStyle(
      fontSize: 36.0,
      fontWeight: FontWeight.w800,
      color: Color.fromRGBO(0,0,0,0.4)
    );
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(top: 30.0),
      width: MediaQuery.of(context).size.width,
      height: 80.0,
      child: Center(
        child: Text(steps[cardIndex]['label'], style: txtStyle,),
      ),
    );
  }

  cards(context){
    return Expanded(
          child: PageView.builder(
            itemCount:  steps.length,
            itemBuilder: (context, index){
              var step = steps[index];
              return WelcomeCard(item: step, isActive: (steps.indexOf(step) == cardIndex));
            },
            controller: cardsController,
            onPageChanged: _pageChanged,
        )
    );
  }

  indicators(){
    final indicators = List<Widget>.generate(steps.length, (index){
      return Indicator(
        isActive: (index == cardIndex)
      );
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }

  actionButtons(){
    final btnStyles = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Color.fromRGBO(0,0,0,0.6),
    );
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Opacity(
            opacity: (cardIndex == steps.length - 1) ? 0.0 : 1.0,
            child: FlatButton(
              child: Text('Pular', style: btnStyles,),
              onPressed: (){
                if (!(cardIndex == steps.length - 1)){
                  
                }
              },
            ),
          ),
          FlatButton(
            child: Text('Próximo >', style: btnStyles,),
            onPressed: (){
              if (cardIndex == steps.length - 1) {

              } else {
                cardsController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
              }
            },
          )
        ],
      ),
    );
  }
}
