import 'dart:ui';
import 'package:guildballmatchhelper/models/faction.dart';

abstract class Profile {
  List<Faction> factions;
  Image profilePicture;
  Image cardImage;
  String name;
  List<String> keywords;
  String baseSize;

  Profile(
      {
      this.factions,
      this.profilePicture,
      this.name,
      this.cardImage,
      this.keywords,
      this.baseSize});
}
