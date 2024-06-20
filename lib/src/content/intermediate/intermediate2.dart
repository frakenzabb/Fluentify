import 'package:flutter/material.dart';
import 'package:coba_uas/src/content/intermediate.dart';

class Intermediate2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vocabulary Expansion for Intermediate Learners',
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
    Expanding vocabulary is crucial for intermediate language learners as it bridges the gap between basic communication and advanced proficiency. At this stage, learners are moving beyond simple words and phrases, 
    seeking to express more complex ideas and emotions. A rich vocabulary enhances their ability to comprehend and engage with diverse texts, participate in conversations on various topics, and express themselves more precisely and creatively. This growth in vocabulary not only improves language skills but also boosts confidence, encouraging learners to explore and interact more with the language in different contexts.
  ''';

  final String articleText2 = '''
 Strategies for Vocabulary Expansion

1. Contextual Learning: One effective strategy is learning new words in context rather than in isolation. This involves reading books, articles, and other materials where new vocabulary is naturally embedded. Encountering words in different contexts helps learners understand nuances and proper usage, making retention easier. For instance, reading a novel or an article about a specific topic exposes learners to relevant vocabulary, providing practical examples of how words are used in sentences.

2. Utilizing Flashcards and Apps: Digital tools like flashcard apps (e.g., Anki, Quizlet) can be highly effective for intermediate learners. These tools often use spaced repetition, a method that involves reviewing words at increasing intervals to enhance long-term retention. Flashcards can include not just the word, but also its definition, usage in a sentence, and even images or audio to reinforce learning. Regular practice with these tools helps learners gradually build a strong vocabulary base.

3. Engaging in Conversations: Actively participating in conversations is another key method for vocabulary expansion. Engaging with native speakers or other learners provides opportunities to use new words in real-time, receive immediate feedback, and understand words within the flow of natural dialogue. Language exchange partners, discussion groups, and conversational practice sessions are valuable resources for applying newly learned vocabulary in practical, interactive settings.

4. Thematic Vocabulary Lists: Focusing on specific themes or topics can also aid in vocabulary development. Creating lists of words related to particular subjects (e.g., travel, technology, emotions) helps learners acquire vocabulary that is relevant to their interests and likely to be used in specific contexts. This targeted approach not only makes learning more interesting but also ensures that the vocabulary acquired is practical and immediately usable.

5. Using Mnemonics: Mnemonics are memory aids that help learners associate new words with familiar concepts or images. For example, to remember the word "gregarious" (which means sociable), learners might visualize a group of people happily chatting together, associating the word with the idea of a lively social gathering. Such techniques make the learning process more engaging and help in retaining complex or abstract vocabulary.
  ''';

  final String articleText3 = '''
   A well-developed vocabulary enhances various language skills. It improves reading comprehension, enabling learners to understand and enjoy more complex texts without constantly consulting a dictionary. 
   In writing, a richer vocabulary allows for more nuanced and varied expression, making written communication clearer and more compelling. Additionally, in listening and speaking, a broad vocabulary aids in understanding others and expressing thoughts accurately and effectively. Overall, vocabulary expansion plays a vital role in achieving language fluency and cultural literacy, enriching the learner’s experience and proficiency.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers and Basic Vocabularies for Beginners'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => CardListScreenInter(),
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
                      image: AssetImage('assets/inter/grammar.jpg'),
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
