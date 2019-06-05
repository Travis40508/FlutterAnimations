import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class EventsAnimations extends StatefulWidget {
  @override
  _EventsAnimationsState createState() => _EventsAnimationsState();
}

class _EventsAnimationsState extends State<EventsAnimations> {

  bool isTapped;
  bool isAlsoTapped;

  @override
  void initState() {
    super.initState();
    setState(() {
      isTapped = false;
      isAlsoTapped = false;
    });
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
            child: InkWell(
              onTap: () => setState(() => isTapped = !isTapped),
              child: ControlledAnimation(
                playback: isTapped ? Playback.PLAY_FORWARD : Playback.PLAY_REVERSE,
                duration: Duration(seconds: 1),
                tween: Tween(begin: isTapped ? 250.0 : 100.0, end: isTapped ? 100: 250.0),
                builder: (context, animationParams) {
                  return Container(
                    color: Colors.deepPurpleAccent,
                    width: animationParams,
                    height: 100.0,
                  );
                },
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => setState(() => isAlsoTapped = !isAlsoTapped),
              child: ControlledAnimation(
                playback: isAlsoTapped ? Playback.PLAY_FORWARD : Playback.PLAY_REVERSE,
                duration: Duration(milliseconds: 500),
                tween: Tween(begin: isAlsoTapped ? 250.0 : 150.0, end: isAlsoTapped ? 150.0 : 250.0),
                builder: (context, animationParams) {
                  return Container(
                    color: Colors.deepPurpleAccent,
                    width: 100.0,
                    height: animationParams,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
