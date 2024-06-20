import 'package:flutter/material.dart';
import 'package:coba_uas/src/content/intermediate.dart';

class Intermediate1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Numbers and Basic Vocabularies for Beginners',
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
    Learning numbers is a fundamental part of acquiring a new language. Numbers are essential for everyday interactions, from telling the time to shopping, handling money, and understanding dates. For beginners, it's crucial to start with the basics: learning to count from one to ten, then progressing to larger numbers. 
    Basic vocabulary forms the foundation of any language. For beginners, it’s important to focus on words that are commonly used in everyday conversations. 
  ''';

  final String articleText2 = '''
   Here’s a simple guide for numbers:

- One to Ten: Start by memorizing the numbers from one to ten. These are the building blocks for all other numbers. Practice saying them out loud, writing them down, and using them in simple sentences.
- Tens and Hundreds: Once you're comfortable with one to ten, move on to multiples of ten (e.g., ten, twenty, thirty) and then to hundreds (one hundred, two hundred). This helps in understanding the structure of larger numbers.
- Basic Arithmetic: Learning basic arithmetic terms like addition, subtraction, multiplication, and division is also helpful. Phrases like "plus," "minus," "times," and "divided by" are used frequently.
- Practical Application: Practice using numbers in practical situations. Count objects around you, ask for prices when shopping, or discuss ages and dates.

    Here’s a breakdown of essential vocabulary categories:

- Greetings and Introductions: Learn how to say hello, goodbye, please, thank you, and how to introduce yourself. Common phrases include "Hello, my name is..." and "Nice to meet you."
- Common Nouns: Start with nouns for everyday objects, people, and places. Words like "house," "car," "family," "school," "food," and "friend" are useful.
- Verbs: Verbs are action words. Begin with common ones like "eat," "drink," "go," "come," "see," and "do." Knowing basic verbs helps in forming simple sentences.
- Adjectives: Adjectives describe nouns. Basic adjectives like "big," "small," "happy," "sad," "hot," and "cold" are good starting points.
- Numbers: As mentioned, numbers are part of basic vocabulary. Being able to say numbers helps in a variety of contexts.
  ''';

  final String articleText3 = '''
   - Flashcards: Use flashcards to memorize numbers and basic vocabulary. Visual aids can help reinforce memory.
- Repetition: Repetition is key. Regularly review what you’ve learned to help it stick.
- Practice Speaking: Practice speaking the numbers and vocabulary words out loud. This helps with pronunciation and confidence.
- Use in Context: Try to use new words and numbers in sentences. Contextual usage aids understanding and retention.

Learning numbers and basic vocabulary is the first step in becoming proficient in a new language. Start small, be consistent, and practice regularly to build a strong foundation.
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
                      image: AssetImage('assets/inter/describing.jpg'),
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
