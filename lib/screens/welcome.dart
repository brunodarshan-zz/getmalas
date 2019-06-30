import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:getmalas/components/welcome_card.dart';

class Welcome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelcomeState();
  }

}


class WelcomeState extends State<Welcome> {
  int cardIndex = 0;
  PageController welcomeController = PageController();


  List steps = [
  { 
    'label': 'Olá',
    'image':SvgPicture.asset('assets/slide-step-1.svg'), 
    'description': 'Lorem ipsum dolor sit amet. Coentcts Opus.' 
  },
  { 
    'label': 'Escolha',
    'image':SvgPicture.asset('assets/slide-step-2.svg'), 
    'description': 'Lorem ipsum dolor sit amet. Coentcts Opus.' 
  },
  { 
    'label': 'Receba',
    'image':SvgPicture.asset('assets/slide-step-3.svg'), 
    'description': 'Lorem ipsum dolor sit amet. Coentcts Opus.' 
  },
  { 
    'label': 'Curta',
    'image':SvgPicture.asset('assets/slide-step-4.svg'), 
    'description': 'Lorem ipsum dolor sit amet. Coentcts Opus.' 
  },
  { 
    'label': 'Devolva',
    'image':SvgPicture.asset('assets/slide-step-5.svg'),
    'description': 'Lorem ipsum dolor sit amet. Coentcts Opus.' 
  }
];


  List<Widget> getCards() {
   return steps.map((step)=>WelcomeCard(item: step, isActive: (steps.indexOf(step) == cardIndex))).toList();
  }

  @override
  Widget build(BuildContext context) {
     final welcomeCards =  CarouselSlider(
            items: getCards(),
            initialPage: cardIndex,
            enlargeCenterPage: true,
            autoPlay: false,
            height: 500,
            enableInfiniteScroll: false,
            onPageChanged: (value){
              setState((){
                cardIndex = value;
              });
            },
          );
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        padding: EdgeInsets.all(5.0),
        color: Color.fromRGBO(55, 200, 72, 1.0),
        child: Column(
                children: <Widget>[
                Expanded(
                  child: welcomeCards,
                  flex: 1
                ),
                Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        child: Text('Pular', 
                                     style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w600
                                          ),),
                        onPressed: () {welcomeCards.previousPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn); }
                      ),
                      FlatButton(
                        child: Text('Próximo',
                                      style: TextStyle(
                                                      color: Color.fromRGBO(0, 0, 0, 0.6),
                                                      fontSize: 24.0,
                                                      fontWeight: FontWeight.w600
                                                        ),),
                        onPressed: (){ welcomeCards.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeIn); }
                      )
                    ],
                  )
                ]
            )
      )
    );
  }
}

