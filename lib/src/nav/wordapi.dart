import 'package:flutter/material.dart';
import 'package:coba_uas/src/api/word_api.dart';

class wordApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dictionary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WordLookupScreen(),
    );
  }
}

// Define the colors
const appBarTextColor = Colors.white;
const appBarBackgroundColor = Colors.blue;

class WordLookupScreen extends StatefulWidget {
  @override
  _WordLookupScreenState createState() => _WordLookupScreenState();
}

class _WordLookupScreenState extends State<WordLookupScreen> {
  final TextEditingController _controller = TextEditingController();
  final DictionaryApiService _apiService = DictionaryApiService();
  Map<String, dynamic>? _wordData;

  void _fetchWordData() async {
    final word = _controller.text.trim();
    if (word.isNotEmpty) {
      final data = await _apiService.fetchWordData(word);
      setState(() {
        _wordData = data;
      });
    } else {
      setState(() {
        _wordData = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/backgrounduas.jpg'), // Add your background image here
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Enter a word',
                    labelStyle:
                        TextStyle(color: const Color.fromARGB(255, 1, 15, 145)),
                    prefixIcon: Icon(Icons.search, color: Colors.blue),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 1, 15, 145)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 1, 15, 145)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 1, 15, 145),
                          width: 2.0),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _fetchWordData,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 1, 15, 145), // Background color
                    foregroundColor: Colors.white, // Text color
                    padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16), // Padding to increase size
                    textStyle: TextStyle(
                      fontSize: 18, // Font size
                      fontWeight: FontWeight.bold, // Font weight
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12), // Rounded corners
                    ),
                    elevation: 5, // Shadow elevation
                  ),
                  child: Text('Fetch Word Data'),
                ),
                SizedBox(height: 16.0),
                _wordData != null
                    ? Expanded(
                        child: ListView(
                          children: [
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Word: ${_wordData!['word']}',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 16.0),
                                    ...(_wordData!['meanings'] as List)
                                        .map((meaning) => Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Part of Speech: ${meaning['partOfSpeech']}',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                ...((meaning['definitions']
                                                        as List)
                                                    .map((definition) =>
                                                        ListTile(
                                                          title: Text(definition[
                                                              'definition']),
                                                          subtitle: definition[
                                                                      'example'] !=
                                                                  null
                                                              ? Text(
                                                                  'Example: ${definition['example']}')
                                                              : null,
                                                        ))).toList(),
                                              ],
                                            ))
                                        .toList(),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : Text('No data', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
