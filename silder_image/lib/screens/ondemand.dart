import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:silder_image/base_widget/base_widget.dart';

class OnDemandCarouselDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('On-demand carousel demo'),
      body: Container(
          child: CarouselSlider.builder(
            itemCount: 100,
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              autoPlay: true,
            ),
            itemBuilder: (ctx, index, realIdx) {
              return Container(
                child: Text(index.toString()),
              );
            },
          )),
    );
  }
}