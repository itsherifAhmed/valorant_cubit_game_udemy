import 'package:http/http.dart ' as http;

import '../../constant/constant.dart';


class Services {
  Future<dynamic> getAgents() async {
    final response =
    //spanish language use "$url/agents?language=es-ES"
    await http.get(Uri.parse('$url/agents'), headers: {
      'Content-Type': 'application/json',
      'data': ['data'].toString(),
    });

    return response;
  }
}
