import 'package:flutter/material.dart';
import 'package:silder_image/base_widget/base_widget.dart';
import 'package:silder_image/items/demo_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('Carousel demo'),
      body: ListView(
        children: <Widget>[
          DemoItem('Basic demo', '/basic'),
          DemoItem('No center mode demo', '/nocenter'),
          DemoItem('Image carousel slider', '/image'),
          DemoItem('More complicated image slider', '/complicated'),
          DemoItem('Enlarge strategy demo slider', '/enlarge'),
          DemoItem('Manually controlled slider', '/manual'),
          DemoItem('Noon-looping carousel slider', '/noloop'),
          DemoItem('Vertical carousel slider', '/vertical'),
          DemoItem('Fullscreen carousel slider', '/fullscreen'),
          DemoItem('Carousel with indicator demo', '/indicator'),
          DemoItem('On-demand carousel slider', '/ondemand'),
          DemoItem('Image carousel slider with prefetch demo', '/prefetch'),
          DemoItem('Carousel change reason demo', '/reason'),
          DemoItem('Keep pageview position demo', '/position'),
          DemoItem('Multiple item in one screen demo', '/multiple'),
        ],
      ),
    );
  }
}