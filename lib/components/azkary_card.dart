import 'package:flutter/material.dart';
import 'package:umma_flutter/screens/azkary_morning.dart';

// Pray Card Widget
class AzkaryCard extends StatelessWidget {
  AzkaryCard({this.imageUrl, this.title});

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 16.0,
      ),
      height: 120,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, AzkaryMorning.id);
        },
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Посмотреть',
                        style: Theme.of(context).accentTextTheme.bodyText2,
                      ),
                      SizedBox(
                        width: 4.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).accentColor,
                        size: 12,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
