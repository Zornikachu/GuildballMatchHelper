import 'package:flutter/material.dart';
import 'package:guildballmatchhelper/models/faction.dart';
import 'package:guildballmatchhelper/models/profile.dart';

import 'PlayerPositionEnum.dart';

class Player implements Profile {
  int health;
  String defense;
  int armor;
  String mov;
  String kick;
  int meleeZone;
  int tac;
  String inf;

  PlayerPosition position;

  @override
  String baseSize;

  @override
  Image cardImage;

  @override
  List<Faction> factions;

  @override
  List<String> keywords;

  @override
  String name;

  @override
  Image profilePicture;

  Player(
      {this.health,
      this.defense,
      this.armor,
      this.kick,
      this.mov,
      this.inf,
      this.meleeZone,
      this.tac,
      this.position,
      this.baseSize,
      this.factions,
      this.keywords,
      this.name,
      this.cardImage,
      this.profilePicture});
}
