import 'package:flutter/material.dart';

class BadgeText extends StatelessWidget {
  BadgeText({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 2.0,
        horizontal: 6.0,
      ),
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(100.0),
          border: Border.all(
            color: Theme.of(context).accentColor,
          )),
      child: Text(
        text,
        style: Theme.of(context).accentTextTheme.caption,
      ),
    );
  }
}
