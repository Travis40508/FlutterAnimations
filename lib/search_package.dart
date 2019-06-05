import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class SearchPackage extends StatefulWidget {
  @override
  _SearchPackageState createState() => _SearchPackageState();
}

class _SearchPackageState extends State<SearchPackage> {
  bool isSearching;

  @override
  void initState() {
    super.initState();
    setState(() {
      isSearching = false;
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
      automaticallyImplyLeading: isSearching ? false : true,
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent,
      title: Text(
        'Searching Package',
        style: TextStyle(color: Colors.white),
      ),
      actions: <Widget>[
        ControlledAnimation(
          playback: isSearching ? Playback.PLAY_FORWARD : Playback.PLAY_REVERSE,
          duration: Duration(milliseconds: 550),
          tween: Tween(begin: !isSearching ? 0.0 : (MediaQuery.of(context).size.width * .85), end: !isSearching ? (MediaQuery.of(context).size.width * .85) : 0.0),
          builder: (context, animation) {
            return Row(
              children: <Widget>[
                IconButton(
                  onPressed: () => setState(() => isSearching = !isSearching),
                  icon: Icon(
                    isSearching ? Icons.close : Icons.search,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 50.0,
                  width: animation,
                  child: TextField(

                  ),
                )
              ],
            );
          },
        )
      ],
    );
  }

  Widget buildBody() {}
}
