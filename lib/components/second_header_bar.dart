import 'package:flutter/material.dart';
import 'badge_text.dart';

class TimeHeaderControlRow extends StatelessWidget {
  const TimeHeaderControlRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlatButton.icon(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
            onPressed: null,
            icon: Icon(
              Icons.place,
              color: Theme.of(context).accentColor,
            ),
            label: Text(
              'Москва',
              style: Theme.of(context).accentTextTheme.headline6,
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '07:12',
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
                BadgeText(
                  text: '12:43',
                ),
                Text(
                  '15:29',
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
                Text(
                  '18:11',
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
                Text(
                  '19:53',
                  style: Theme.of(context).primaryTextTheme.caption,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          IconButton(
            onPressed: null,
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Icon(
              Icons.notifications_none,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
