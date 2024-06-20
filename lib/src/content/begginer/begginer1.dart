import 'package:flutter/material.dart';
import 'package:coba_uas/src/content/begginer.dart';

class Begginer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greetings and Introductions for Beginners',
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
    When learning a new language, one of the first and most essential skills to acquire is the ability to greet others and introduce yourself. These basic social interactions are the building blocks of effective communication and are crucial in both personal and professional settings. Below, we explore simple yet important aspects of greetings and introductions that beginners should master.
  ''';

  final String articleText2 = '''
    Greetings are the initial words or phrases exchanged when meeting someone. They set the tone for the conversation and reflect courtesy and respect. Common greetings vary depending on the time of day and cultural context. For beginners, starting with basic and widely accepted greetings is a good approach.

1. "Hello" and "Hi": These are the most universal and informal greetings. "Hello" can be used in any setting, while "Hi" is more casual and friendly.
   
2. "Good morning," "Good afternoon," "Good evening": These greetings are more specific to the time of day and slightly more formal. They are appropriate for both social and professional contexts.
   
3. "How are you?" or "How’s it going?": These follow-up questions show interest in the other person’s well-being and can lead to further conversation.

Introducing yourself is a way to provide essential information about who you are. It helps to establish your identity and create a connection with the person you are meeting. A simple and clear introduction includes your name, a bit of personal or professional background, and a polite closing.

1. Start with a greeting: Begin your introduction with a friendly greeting to set a positive tone. For example, "Hello" or "Good morning."

2. State your name: Clearly say your name so the person can remember and address you correctly. "My name is [Your Name]."

3. Provide some context: Depending on the situation, you can share a bit about your background. This could be your job, your reason for being at the event, or a little personal detail. "I am a student at [School]," or "I work as a [Profession] at [Company]."

4. Close politely: End your introduction with a courteous remark. This could be as simple as "Nice to meet you," or "I’m looking forward to working with you."

  ''';

  final String articleText3 = '''
   - Example 1: At a social event.
  - "Hi, good evening! My name is Sarah. I just moved to the city and am excited to meet new people. Nice to meet you!"

- Example 2: In a professional setting.
  - "Good morning! I’m John Smith, a software engineer at Tech Solutions. I look forward to collaborating on this project. It’s a pleasure to meet you."

 Practice Tips
1. Practice aloud: Rehearse your greetings and introductions out loud to build confidence and fluency.
   
2. Use role-play: Engage in role-play with a friend or language partner to simulate real-life scenarios.
   
3. Be mindful of body language: Smile, make eye contact, and use a friendly tone to complement your words.

Mastering greetings and introductions is a fundamental step in learning any language. It opens doors to new relationships and opportunities, making every encounter pleasant and productive.

  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greetings and Introductions for Beginners'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => CardListScreenBegginer(),
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
                      image: AssetImage('assets/begginer/greetings.jpg'),
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
