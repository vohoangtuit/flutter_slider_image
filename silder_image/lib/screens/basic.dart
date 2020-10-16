import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:silder_image/base_widget/base_widget.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1,2,3,4,5];
    return Scaffold(
      appBar: baseAppBar('Basic demo'),
      body: Container(
          child: CarouselSlider(
            options: CarouselOptions(),
            items: list.map((item) => Container(
              child: Center(
                  child: Text(item.toString())
              ),
              color: Colors.green,
            )).toList(),
          )
      ),
    );
  }
}