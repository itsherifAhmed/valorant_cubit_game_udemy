part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {
  const CharactersState();
}

class CharactersInitial extends CharactersState {
  const CharactersInitial();
}

class CharactersLoading extends CharactersState {
  const CharactersLoading();
}



class CharactersLoaded extends CharactersState {
  const CharactersLoaded({required this.listCharacters});
  final List<CharacterModel> listCharacters;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CharactersLoaded && other.listCharacters == listCharacters;
  }

  @override
  int get hashCode => listCharacters.hashCode;
}

class CharactersError extends CharactersState {
  final String message;
  const CharactersError({required this.message});
  @override
  // ignore: hash_and_equals
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CharactersError && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
