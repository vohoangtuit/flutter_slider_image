import 'package:flutter/material.dart';
import 'package:silder_image/base_widget/base_widget.dart';

class DemoItem extends StatelessWidget {
  final String title;
  final String route;
  DemoItem(this.title, this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: textBlueLarge(),),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}