import 'package:flutter/material.dart';
import 'dart:math';
import 'package:coba_uas/src/api/quiz_api.dart';

void main() {
  runApp(QuizGame());
}

class QuizGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis Bahasa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final QuizService _quizService = QuizService();
  List<dynamic> _quizData = [];
  List<String> _userAnswers = [];
  bool _isLoading = false;
  int _currentIndex = 0;
  int _totalPoints = 0;

  @override
  void initState() {
    super.initState();
    _fetchQuizData();
  }

  _fetchQuizData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final data = await _quizService.fetchQuizQuestions(10, 'language');
      setState(() {
        _quizData = data;
      });
    } catch (e) {
      print('Gagal memuat data kuis: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  List<String> _getShuffledOptions(int index) {
    List<String> options = List.from(_quizData[index]['incorrectAnswers']);
    options.add(_quizData[index]['correctAnswer']);
    options.shuffle(Random());
    return options;
  }

  void _answerQuestion(String answer) {
    setState(() {
      _userAnswers.add(answer);
      if (answer == _quizData[_currentIndex]['correctAnswer']) {
        _totalPoints += 10; // Adding 10 points for each correct answer
      }
      _currentIndex++;
    });
  }

  void _restartQuiz() {
    setState(() {
      _currentIndex = 0;
      _userAnswers.clear();
      _totalPoints = 0; // Reset points
    });
    _fetchQuizData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgrounduas.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          _isLoading
              ? Center(child: CircularProgressIndicator())
              : _currentIndex < _quizData.length
                  ? SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Pertanyaan ${_currentIndex + 1}/${_quizData.length}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Card(
                              color: Colors.black.withOpacity(0.6),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Poin: $_totalPoints',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Card(
                              elevation: 4.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Text(
                                      _quizData[_currentIndex]['question'],
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: GridView.count(
                                      crossAxisCount: 2,
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      children: _getShuffledOptions(
                                              _currentIndex)
                                          .map((option) => Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: TextButton(
                                                  onPressed: () {
                                                    _answerQuestion(option);
                                                  },
                                                  child: Text(option,
                                                      style: TextStyle(
                                                        color: Colors
                                                            .white, // Text color
                                                      )),
                                                  style: TextButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .black, // Background color
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'Kuis Selesai!',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Card(
                              color: Colors.black.withOpacity(0.6),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'Total Poin: $_totalPoints',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          ElevatedButton(
                            onPressed: _restartQuiz,
                            child: Text('Ulangi Kuis'),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'Jawaban Anda:',
                              style: TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: _quizData.length,
                            itemBuilder: (context, index) {
                              final question = _quizData[index];
                              return Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Pertanyaan ${index + 1}: ${question['question']}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        SizedBox(height: 5.0),
                                        Text(
                                            'Jawaban Anda: ${_userAnswers[index]}',
                                            style:
                                                TextStyle(color: Colors.white)),
                                        Text(
                                            'Jawaban Benar: ${question['correctAnswer']}',
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
        ],
      ),
    );
  }
}
