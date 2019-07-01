import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getmalas/components/shareds/indicator.dart';
import 'package:getmalas/utils/colors.dart';
import 'package:getmalas/utils/texts.dart';

import 'package:getmalas/components/home/slide_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          BottomLayer(),
          ContentLayer()
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FlatButton(
            child: Text('Pesquisar'),
            onPressed: (){},
          ),
          FlatButton.icon(icon: Icon(Icons.shop), label: Container(height: 0.0,), onPressed: (){},),
          FlatButton.icon(icon: Icon(Icons.access_time), label: Container(height: 0.0,), onPressed: (){},),
          FlatButton.icon(icon: Icon(Icons.access_time), label: Container(height: 0.0,), onPressed: (){},)
        ],
      ),
    );
  }

}

class ContentLayer extends StatefulWidget {
  final slides = slidesHome;

  @override
  State<StatefulWidget> createState() {
    return ContentLayerState();
  }
}

class ContentLayerState extends State<ContentLayer> {
  int position;
  final slidesController = PageController(initialPage: 0, viewportFraction: 0.9);
  

  void initState() {
    super.initState();
    position = 0;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      // // mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Spacer(
          flex: 3
        ),
        Expanded(
          flex: 2,
          child:
              PageView.builder(
                itemCount: widget.slides.length,
                itemBuilder: (context, index){
                  return SlideItem(slide: widget.slides[index]);
                },
                controller: slidesController,
                onPageChanged: (value){
                  setState((){
                    position = value;
                  });
                },
              ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List<Widget>.generate(widget.slides.length, (index){
            return Indicator(isActive: index == position, colorActive: AppColors.colorDefault);
          })
        ),
        Container(
                height: 80.0,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20.0),
                  child: RaisedButton(
                    child: Text('Quero alugar uma mala', style: TextStyle(fontWeight: FontWeight.w700)),
                    onPressed: (){},
                    color: AppColors.colorDefault,
                    textColor: Color.fromRGBO(0,0,0,0.5)
                  ),
                ),
              ),
      ],
    );
  }
}


class BottomLayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisSize: MainAxisSize.max,
      direction: Axis.vertical,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Container(
              padding: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: AppColors.colorDefault,
              child: SvgPicture.asset('assets/ilust-home.svg'),
            )
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Color.fromRGBO(255, 255, 255, 0.98),
          ),
        )
      ],
    );
  }

}