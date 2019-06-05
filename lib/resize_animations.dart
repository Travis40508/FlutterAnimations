import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class ResizeAnimations extends StatefulWidget {
  @override
  _ResizeAnimationsState createState() => _ResizeAnimationsState();
}

class _ResizeAnimationsState extends State<ResizeAnimations> {


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
        'Resize Animations',
        style: TextStyle(
            color: Colors.white
        ),
      ),
    );
  }

  Widget buildBody() {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ControlledAnimation(
              playback: Playback.MIRROR,
              duration: Duration(seconds: 1),
              tween: Tween(begin: 100.0, end: 250.0),
              builder: (context, animationParams) {
                return Container(
                  color: Colors.deepPurpleAccent,
                  width: animationParams,
                  height: 100.0,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ControlledAnimation(
              playback: Playback.MIRROR,
              duration: Duration(milliseconds: 500),
              tween: Tween(begin: 150.0, end: 250.0),
              builder: (context, animationParams) {
                return Container(
                  color: Colors.deepPurpleAccent,
                  width: 100.0,
                  height: animationParams,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
