import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:guildballmatchhelper/models/guildball models/guild.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  GuildList _guildList = new GuildList();

  Future<String> _loadGuildsAsset() async {
    return await rootBundle.loadString('lib/ressources/guilds.json');
  }

  Future loadStudent() async {
    String jsonString = await _loadGuildsAsset();
    final jsonResponse = json.decode(jsonString);
    
    _guildList = new GuildList.fromMappedJson(jsonResponse);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Guild Ball Match Helper'),
        ),
        body: new ListView.builder(
          itemCount:  _guildList.guilds.length,
          itemBuilder: (BuildContext context, int index){
            return new GuildButton(guildName : _guildList.guilds[index].name);
          },
        ),
      ),
    );
  }
}

class GuildButton extends StatelessWidget {
  final String guildName;

  GuildButton({this.guildName});

  openGuildItem()
  {

  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: openGuildItem(),
      child: Text(guildName,
        style : TextStyle(fontSize: 20),
      )
    );
  }
}

