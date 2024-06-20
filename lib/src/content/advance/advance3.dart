import 'package:coba_uas/src/content/advance.dart';
import 'package:flutter/material.dart';

class Advance3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Advanced Vocabularies',
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
     Advanced vocabularies encompass words that go beyond everyday language, offering nuanced meanings and precise distinctions. They allow speakers and writers to articulate ideas with greater clarity and sophistication, capturing subtle shades of meaning that simpler words might overlook. For instance, instead of saying "angry," one might use "furious," "incensed," or "enraged," each conveying a different intensity or context of anger. Mastery of advanced vocabularies not only enhances communication but also enriches comprehension by offering a broader spectrum of expression.
  ''';

  final String articleText2 = '''
  The significance of advanced vocabularies extends beyond their literal definitions; they carry cultural and contextual nuances that shape their usage. Words like "ennui" or "melancholy" evoke specific emotional states or experiences that are deeply rooted in cultural perceptions and literary traditions. Understanding these nuances enables speakers to convey complex ideas succinctly and accurately within specific cultural or social contexts, fostering clearer communication and deeper connections among diverse audiences.

  Developing proficiency in advanced vocabularies enhances language fluency by expanding the mental lexicon, or the inventory of words a person can comprehend and use effectively. This expansion not only enriches verbal expression but also enhances cognitive flexibility and analytical thinking. When faced with complex concepts or nuanced arguments, individuals with a robust vocabulary can more easily grasp subtleties and formulate articulate responses, demonstrating a deeper understanding and mastery of language.

  ''';

  final String articleText3 = '''
  These paragraphs illustrate how advanced vocabularies contribute to precision in communication, cultural awareness, and cognitive development, highlighting their role in enhancing both linguistic fluency and intellectual agility.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced Vocabularies'),
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
                      image: AssetImage('assets/advance/advance3.jpg'),
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
