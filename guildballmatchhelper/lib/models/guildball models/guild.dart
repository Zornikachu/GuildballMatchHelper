import 'dart:ui';
import 'package:guildballmatchhelper/models/faction.dart';
import 'package:guildballmatchhelper/models/guildball models/player.dart';

class Guild extends Faction {
  final String guildRules;
  final bool isMinorGuild;
  final List<Player> players;

  @override
  String name;

  @override
  Image factionLogo;

  Guild({
    this.name,
    this.players,
    this.guildRules,
    this.isMinorGuild
  });
  
  factory Guild.fromMappedJson(Map<String, dynamic> json) {
      
    var pList = json['players'] as List;

    return Guild(    
      name: json['name'],
      players: pList?.map((player) => Player.fromMappedJson(player))?.toList() ?? [],
      guildRules: json['guildRules'],
      isMinorGuild: json['isMinorGuild']);
  }

}

class GuildList {
  final List<Guild> guilds;

  GuildList({this.guilds});

  factory GuildList.fromMappedJson(List<dynamic> parsedJson) {

    List<Guild> pGuilds = new List<Guild>();
    pGuilds = parsedJson.map((i) => Guild.fromMappedJson(i)).toList();

    return new GuildList(
      guilds : pGuilds
    );
  }
}