import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:silder_image/base_widget/base_widget.dart';

import '../main.dart';

class NoonLoopingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('Noon-looping carousel demo'),
      body: Container(
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 2,
              autoPlay: true,
            ),
            items: imageSliders,
          )
      ),
    );
  }
}