import 'package:flutter/material.dart';

import 'models/guildball models/player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void pressedAnwser() {
    print('Button pressed');
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Guild Ball Match Helper'),
        ),
        body: Column(
          children: <Widget>[
            Text('The Question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: pressedAnwser,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: pressedAnwser,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: pressedAnwser,
            ),
          ],
        ),
      ),
    );
  }
}
