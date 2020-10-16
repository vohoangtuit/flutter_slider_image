import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:silder_image/base_widget/base_widget.dart';

import '../main.dart';

class VerticalSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('Vertical sliding carousel demo'),
      body: Container(
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              scrollDirection: Axis.vertical,
              autoPlay: true,
            ),
            items: imageSliders,
          )
      ),
    );
  }
}