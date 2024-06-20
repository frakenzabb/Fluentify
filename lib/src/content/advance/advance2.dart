import 'package:coba_uas/src/content/advance.dart';
import 'package:flutter/material.dart';

class Advance2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Idioms and Phrasal Verbs for Advanced Learners',
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
    Idioms are expressions or phrases whose meanings are not predictable from the literal meanings of the words that make them up. They often reflect cultural nuances and historical contexts, making them particularly challenging for non-native speakers. Understanding and using idioms correctly is a mark of advanced proficiency in a language.
  ''';

  final String articleText2 = '''
 1. Bite the bullet - To do something painful or unpleasant that you have been avoiding. For example, "I hate going to the dentist, but I'll have to bite the bullet and make an appointment."
   
2. Break the ice - To initiate conversation in a social setting, especially to ease tension or awkwardness. For instance, "The host's joke helped break the ice at the party."

3. Cost an arm and a leg - To be very expensive. An example would be, "That new smartphone costs an arm and a leg!"

4. Hit the nail on the head - To describe exactly what is causing a situation or problem. For example, "You hit the nail on the head when you said the team needs more practice."

5. Under the weather - To feel ill or unwell. For instance, "I'm not going to work today because I'm feeling under the weather."

 Phrasal Verbs

Phrasal verbs are verbs combined with one or two particles (an adverb and/or a preposition) that create a meaning different from the original verb. These can be particularly tricky because the meaning often changes significantly from the original verb. Advanced learners need to familiarize themselves with these nuanced meanings and practice using them in various contexts. Here are some examples:

1. Break down - To stop functioning (a machine), or to become very emotional. For instance, "My car broke down on the way to work" or "She broke down in tears when she heard the news."

2. Bring up - To mention a topic or to raise a child. For example, "He brought up an interesting point during the meeting" or "She was brought up in a small town."

3. Come across - To find something by chance or to give a certain impression. For instance, "I came across an old photo album in the attic" or "He comes across as very confident."

4. Give up - To stop trying or to surrender. An example would be, "She decided to give up smoking" or "The soldiers gave up after a long battle."

5. Look after - To take care of someone or something. For example, "Can you look after my cat while I'm away?"
  ''';

  final String articleText3 = '''
   Understanding and Mastery

To truly master idioms and phrasal verbs, advanced learners should:

1. Contextual Learning: Focus on understanding these expressions within different contexts. Reading books, watching movies, and engaging in conversations are effective ways to see how these phrases are naturally used.

2. Practice and Usage: Regularly practice by incorporating them into your writing and speaking. Create sentences or short stories using new idioms and phrasal verbs.

3. Cultural Insights: Since many idioms and phrasal verbs are culturally specific, learning about the culture where the language is spoken can provide deeper insights and help remember them better.

4. Consistent Review: Repetition is key. Regularly reviewing idioms and phrasal verbs can help reinforce their meanings and correct usage.

By integrating idioms and phrasal verbs into daily language use, advanced learners can achieve greater fluency and a more natural, native-like command of the language.
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
                      image: AssetImage('assets/advance/advance2.jpg'),
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
