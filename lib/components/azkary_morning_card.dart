import 'package:flutter/material.dart';

class AzkaryMorningCard extends StatelessWidget {
  AzkaryMorningCard(
      {this.title,
      this.arabianText,
      this.russianText,
      this.russianTranslitText});

  final String title;
  final String arabianText;
  final String russianText;
  final String russianTranslitText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          Divider(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Text(
                  arabianText,
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  russianText,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  russianTranslitText,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
