import 'dart:convert';
import 'package:http/http.dart' as http;

class DictionaryApiService {
  final String _baseUrl = 'https://api.dictionaryapi.dev/api/v2/entries/en';

  Future<Map<String, dynamic>?> fetchWordData(String word) async {
    final url = Uri.parse('$_baseUrl/$word');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.isNotEmpty ? data[0] : null;
    } else {
      print('Failed to load word data: ${response.statusCode}');
      return null;
    }
  }
}
