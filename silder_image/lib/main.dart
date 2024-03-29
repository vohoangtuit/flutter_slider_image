import 'package:flutter/material.dart';
import 'package:silder_image/screens/basic.dart';
import 'package:silder_image/screens/complicated.dart';
import 'package:silder_image/screens/enlarge.dart';
import 'package:silder_image/screens/fullscreen.dart';
import 'package:silder_image/screens/home.dart';
import 'package:silder_image/screens/image.dart';
import 'package:silder_image/screens/indicator.dart';
import 'package:silder_image/screens/manual.dart';
import 'package:silder_image/screens/multiple.dart';
import 'package:silder_image/screens/nocenter.dart';
import 'package:silder_image/screens/noloop.dart';
import 'package:silder_image/screens/ondemand.dart';
import 'package:silder_image/screens/position.dart';
import 'package:silder_image/screens/prefetch.dart';
import 'package:silder_image/screens/reason.dart';
import 'package:silder_image/screens/vertical.dart';

import 'model/product.dart';
void main() {
  runApp(MyApp());
}
// todo lib :https://github.com/serenader2014/flutter_carousel_slider/blob/master/example/lib/main.dart
// todo: https://pub.dev/packages/carousel_slider
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Slider Image',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        initialRoute: '/',
        routes: {
          '/': (ctx) => HomeScreen(),
          '/basic': (ctx) => BasicDemo(),
          '/nocenter': (ctx) => NoCenterDemo(),
          '/image': (ctx) => ImageSliderDemo(),
          '/complicated': (ctx) => ComplicatedImageDemo(),
          '/enlarge': (ctx) => EnlargeStrategyDemo(),
          '/manual': (ctx) => ManuallyControlledSlider(),
          '/noloop': (ctx) => NoonLoopingDemo(),
          '/vertical': (ctx) => VerticalSliderDemo(),
          '/fullscreen': (ctx) => FullscreenSliderDemo(),
          '/ondemand': (ctx) => OnDemandCarouselDemo(),
          '/indicator': (ctx) => CarouselWithIndicatorDemo(),
          '/prefetch': (ctx) => PrefetchImageDemo(),
          '/reason': (ctx) => CarouselChangeReasonDemo(),
          '/position': (ctx) => KeepPageviewPositionDemo(),
          '/multiple': (ctx) => MultipleItemDemo(),
        }
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
 List<Product> listProduct(){
  List<Product> list = <Product>[];
  list.add(Product('name 1','https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80'));
  list.add(Product('name 2','https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80'));
  list.add(Product('name 3','https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'));
  list.add(Product('name 4','https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80'));
 // list.add(Product('name 5','https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80'));
 // list.add(Product('name 6','https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'));
  return list;
 }
final List uniqueList = Set.from(listProduct()).toList();
final List<Widget> imageSliders = uniqueList.map((item) {
  String idx = uniqueList.indexOf(item).toString();
  print("idx imgList : $idx");
  return Container(// todo: can use imgList.map(..);

  child: Container(
    margin: EdgeInsets.all(5.0),

    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item.image, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Text(
                  //'No. ${imgList.indexOf(item)} image',
                  'No: $idx image',
                  //'No: ${listProduct().indexOf(item)} image',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
    ),
  ),
);
}).toList();
