class CharacterModel {
  CharacterModel(
      {
      // required this.id,
      required this.displayName,
      required this.description,
      required this.fullPortrait,
      required this.background,
      required this.role,
      required this.abilitie,
      required this.voiceLine});

  // int id;
  String displayName;
  String description;
  String fullPortrait;
  String background;
  RoleModel role;
  List<AbilityModel> abilitie;
  VoiceLineModel voiceLine;
}

class RoleModel {
  RoleModel({
    // required this.id,
    required this.displayName,
    required this.description,
    required this.displayIcon,
    required this.id,
  });

  // int id;
  String displayName;
  String description;
  String displayIcon;
  String id;
}

class AbilityModel {
  AbilityModel({
    required this.slot,
    required this.displayName,
    required this.description,
    required this.displayIcon,
  });

  String slot;
  String displayName;
  String description;
  String displayIcon;
}

class VoiceLineModel {
  VoiceLineModel({
    required this.voiceLine,
  });

  String voiceLine;
}
