import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:silder_image/base_widget/base_widget.dart';

import '../main.dart';

class EnlargeStrategyDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: baseAppBar('Complicated image slider demo'),
      body: Container(
          child: Column(children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: imageSliders,
            ),
          ],)
      ),
    );
  }
}