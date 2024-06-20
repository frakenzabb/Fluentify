import 'dart:convert';
import 'package:http/http.dart' as http;

class QuizService {
  final String _baseUrl = 'https://the-trivia-api.com/api/questions';

  Future<List<dynamic>> fetchQuizQuestions(int limit, String category) async {
    final url = Uri.parse('$_baseUrl?limit=$limit&category=$category');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load quiz data');
    }
  }
}
