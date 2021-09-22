import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../widgets/constants.dart';

class LoginRepository {
  var url = Uri.parse('$URL_BASE/v1.1/auth');

  Future<Map<String, dynamic>> authenticate(String usuario, String senha) async {
    var data = json.encode({'usuario': usuario, 'senha': senha});
    var headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };
    var resposta = await http.post(url, headers: headers, body: data);
    if (resposta.statusCode != 200) throw Exception('http.post error: statusCode= ${resposta.statusCode}');
    return json.decode(resposta.body);
  }
}
