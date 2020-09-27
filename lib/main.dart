import 'package:flutter/material.dart';
import 'package:umma_flutter/theme_data.dart';
import 'package:umma_flutter/screens/azkary_screen.dart';
import 'package:umma_flutter/screens/azkary_morning.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ummaTheme,
      home: Azkary(),
      initialRoute: Azkary.id,
      routes: {
        Azkary.id: (context) => Azkary(),
        AzkaryMorning.id: (context) => AzkaryMorning(),
      },
    );
  }
}
