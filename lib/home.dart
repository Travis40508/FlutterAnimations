import 'package:flutter/material.dart';
import 'package:flutter_animations/events_animations.dart';
import 'package:flutter_animations/listener_animations.dart';
import 'package:flutter_animations/resize_animations.dart';
import 'package:flutter_animations/search_package.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent,
      title: Text(
        'Animations',
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }

  Widget buildBody() {
    return ListView(
      children: <Widget>[
        Card(
          elevation: 8.0,
          child: ListTile(
            onTap: () => Navigator.of(context).push((MaterialPageRoute(builder: (context) => ResizeAnimations()))),
            title: Text(
              'Resize Animations',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Card(
          elevation: 8.0,
          child: ListTile(
            onTap: () => Navigator.of(context).push((MaterialPageRoute(builder: (context) => EventsAnimations()))),
            title: Text(
              'Starting animations through events',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Card(
          elevation: 8.0,
          child: ListTile(
            onTap: () => Navigator.of(context).push((MaterialPageRoute(builder: (context) => ListenerAnimations()))),
            title: Text(
              'Connecting animations through listeners',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Card(
          elevation: 8.0,
          child: ListTile(
            onTap: () => Navigator.of(context).push((MaterialPageRoute(builder: (context) => SearchPackage()))),
            title: Text(
              'New Search Package',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
