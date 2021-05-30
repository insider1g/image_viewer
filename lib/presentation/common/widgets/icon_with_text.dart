import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_viewer/presentation/core/styles.dart';

class IconText extends StatelessWidget {
  final String text;
  final IconData icon;

  const IconText({Key key, this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: EdgeInsets.all(Insets.offset),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 54.0),
            SizedBox(height: Insets.sm),
            Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold))
          ]),
    ));
  }
}
