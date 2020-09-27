import 'package:flutter/material.dart';
import 'package:umma_flutter/components/second_header_bar.dart';
import 'package:umma_flutter/services/azkary_morning_list.dart';

class AzkaryMorning extends StatefulWidget {
  static const String id = 'azkary_morning';

  @override
  _AzkaryMorningState createState() => _AzkaryMorningState();
}

class _AzkaryMorningState extends State<AzkaryMorning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          child: Container(
            color: Color(0xffD1D1D6),
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).accentIconTheme.color,
          ),
        ),
        title: Text(
          'Азкары',
          style: TextStyle(),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: null,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TimeHeaderControlRow(),
            Divider(
              height: 1,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: azkaryMorningList.length,
                separatorBuilder: (BuildContext context, int index) => Divider(
                  height: 1,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final AzkaryMorningCard = azkaryMorningList[index];

                  return AzkaryMorningCard;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
