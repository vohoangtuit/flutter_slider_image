import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:silder_image/base_widget/base_widget.dart';

import '../main.dart';

class KeepPageviewPositionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:baseAppBar('Keep pageview position demo'),
      body: ListView.builder(itemBuilder: (ctx, index) {
        if (index == 3) {
          return Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  pageViewKey: PageStorageKey<String>('carousel_slider'),
                ),
                items: imageSliders,
              )
          );
        } else {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            color: Colors.blue,
            height: 200,
            child: Center(
              child: Text('other content'),
            ),
          );
        }
      }),
    );
  }
}