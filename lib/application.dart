import 'package:flutter/material.dart';

import 'home.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animations',
      home: Home(),
    );
  }
}
