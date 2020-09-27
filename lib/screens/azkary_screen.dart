import 'package:flutter/material.dart';
import 'package:umma_flutter/components/second_header_bar.dart';
import 'package:umma_flutter/services/azcary_list.dart';

class Azkary extends StatefulWidget {
  static const String id = 'azkary';

  @override
  _AzkaryState createState() => _AzkaryState();
}

class _AzkaryState extends State<Azkary> {
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
          onPressed: () {},
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TimeHeaderControlRow(),
            Divider(
              height: 1,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: azkaryList.length,
                separatorBuilder: (BuildContext context, int index) => Divider(
                  height: 1,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final AzkaryCard = azkaryList[index];

                  return AzkaryCard;
                },
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
