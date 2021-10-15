import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:silder_image/base_widget/base_widget.dart';
import 'package:silder_image/screens/detail.dart';

import '../main.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  String? image;

  @override
  Widget build(BuildContext context) {
    image =listProduct()[_current].image;
    return Scaffold(
      appBar: baseAppBar('Carousel with indicator demo'),
      body: Column(
          children: [
            GestureDetector(
              child:
              CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    image =listProduct()[_current].image;
                    setState(() {
                      _current = index;
                      image =listProduct()[_current].image;
                    });
                  }
              ),
            ),
              onTap: (){
                print(('onTap'));
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(image)));
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listProduct().map((url) {
                int index = listProduct().indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ]
      ),
    );
  }
}