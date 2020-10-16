import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:silder_image/base_widget/base_widget.dart';
import 'package:silder_image/main.dart';

class ImageSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('Image slider demo'),
      body: Container(
          child: CarouselSlider(
            options: CarouselOptions(),
            items: imgList.map((item) => Container(
              child: Center(
                  child: Image.network(item, fit: BoxFit.cover, width: 1000)
              ),
            )).toList(),
          )
      ),
    );
  }
}