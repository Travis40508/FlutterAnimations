import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class ListenerAnimations extends StatefulWidget {
  @override
  _ListenerAnimationsState createState() => _ListenerAnimationsState();
}

class _ListenerAnimationsState extends State<ListenerAnimations> {
  bool isSwiped;

  @override
  void initState() {
    setState(() {
      isSwiped = false;
    });
    super.initState();
  }

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
        'Listener Animations',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget buildBody() {
    return GestureDetector(
      onVerticalDragEnd: (drag) => setState(() => isSwiped = !isSwiped),
      child: Stack(
        children: <Widget>[
          ControlledAnimation(
            duration: Duration(seconds: 1),
            tween: Tween(begin: isSwiped ? 300.0 : 100.0, end: isSwiped ? 100.0: 300.0),
            playback: isSwiped ? Playback.PLAY_FORWARD : Playback.PLAY_REVERSE,
            builder: (context, animation) {
              return Positioned(
                top: 100.0,
                left: 40.0,
                right: 40.0,
                bottom: animation,
                child: Card(
                  elevation: 18.0,
                ),
              );
            },
            animationControllerStatusListener: (status) => {

            },
          ),
        ],
      ),
    );
  }
}
