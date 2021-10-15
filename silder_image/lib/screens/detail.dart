import 'package:flutter/material.dart';
import 'package:silder_image/base_widget/base_widget.dart';

class DetailScreen extends StatefulWidget {
  final String? url;
  DetailScreen(this.url);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('Detail'),
      body: Container(
        child: Column(
           children: <Widget>[
              Image.network(widget.url!, fit: BoxFit.cover, width: 1000.0),
           ],
        ),
      )
    );
  }
}
