import 'dart:convert';
import 'package:http/http.dart' as http;

class OpenAIService {
  final _apiKey = "";
  final _endpoint = Uri.parse("https://api.openai.com/v1/chat/completions");

  Future<String> sendChat(List<Map<String, String>> messages) async {
    final resp = await http.post(
      _endpoint,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $_apiKey',
      },
      body: jsonEncode({'model': 'gpt-3.5-turbo', 'messages': messages}),
    );
    if (resp.statusCode == 200) {
      return jsonDecode(resp.body)['choices'][0]['message']['content'];
    } else {
      throw Exception('API error ${resp.statusCode}');
    }
  }
}
