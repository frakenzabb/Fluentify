import 'package:coba_uas/src/content/advance.dart';
import 'package:flutter/material.dart';

class Advance1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advance Grammar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String articleText1 = '''
    Advanced grammar involves mastering complex sentence structures to convey nuanced meanings and sophisticated ideas. This includes the use of compound-complex sentences, which combine multiple independent clauses with one or more dependent clauses. For example, "Although she was tired, she finished her homework, and she prepared for the next day's meeting." Understanding how to balance these clauses and punctuate them correctly is crucial for clarity and precision in advanced writing.
  ''';

  final String articleText2 = '''
   Mastery of Subjunctive Mood

The subjunctive mood is a key aspect of advanced grammar, used to express wishes, hypothetical situations, or actions that are contrary to fact. For example, "If I were a millionaire, I would travel the world." Recognizing when to use the subjunctive mood instead of the indicative mood (which states facts) is essential for expressing complex ideas and maintaining grammatical accuracy.

Utilization of Advanced Punctuation

Advanced grammar also involves the proper use of punctuation marks such as semicolons, colons, and dashes. These punctuation marks help to connect ideas more closely than a period but more distinctly than a comma. For instance, a semicolon can link two related independent clauses: "She has traveled extensively; her favorite destination is Japan." Mastering these marks enhances readability and adds sophistication to writing.

Command of Verb Tenses and Aspects

Understanding and correctly using various verb tenses and aspects is a hallmark of advanced grammar. This includes not only the simple past, present, and future tenses but also the perfect and continuous aspects. For example, the past perfect continuous tense ("I had been studying for hours before the exam started") provides a specific context that simple past cannot. Advanced grammar users can convey precise timelines and the nuances of actions over time.

Proficiency in Conditional Sentences

Conditional sentences, which describe the result of a hypothetical situation, are crucial in advanced grammar. There are four main types: zero, first, second, and third conditionals, each with its structure and usage. For instance, "If I had known you were coming, I would have baked a cake" (third conditional) implies a past situation that did not happen. Mastery of conditionals allows for the expression of complex ideas and hypothetical scenarios effectively.

Nuanced Use of Relative Clauses

Relative clauses add information to a sentence, typically introduced by relative pronouns such as who, whom, whose, which, and that. In advanced grammar, understanding when to use restrictive versus non-restrictive clauses is essential. For example, "The book that you gave me was fascinating" (restrictive) versus "The book, which you gave me, was fascinating" (non-restrictive). This distinction affects the sentence's meaning and the information conveyed.

Advanced Prepositional Usage

Prepositions can be tricky even for advanced learners. Advanced grammar includes mastering prepositional phrases to add detail and clarity. This involves understanding idiomatic expressions and collocations, such as "interested in," "capable of," and "dependent on." Proper use of prepositions ensures precise expression and avoids ambiguity in writing and speech.
  ''';

  final String articleText3 = '''
   By mastering these aspects of advanced grammar, writers and speakers can enhance their communication, making it more effective, nuanced, and professional.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced Grammar'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => CardListScreenAdvance(),
              ),
            );
          },
        ),
        backgroundColor: Color.fromARGB(255, 2, 0, 109),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgrounduas2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/advance/advance1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Introduction',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Divider(),
                              SizedBox(height: 8.0),
                              Text(
                                articleText1,
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Discussion',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Divider(),
                              SizedBox(height: 8.0),
                              Text(
                                articleText2,
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Examples',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Divider(),
                              SizedBox(height: 8.0),
                              Text(
                                articleText3,
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
