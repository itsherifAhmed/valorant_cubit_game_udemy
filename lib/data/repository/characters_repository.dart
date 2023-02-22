
import '../service/web_service.dart';

class CharactersRepository {
  final Services apiProvider;

  CharactersRepository({required this.apiProvider});

  Future<dynamic> getListCharacters() async {
    return apiProvider.getAgents();
  }
}
