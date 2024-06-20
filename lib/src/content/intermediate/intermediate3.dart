import 'package:flutter/material.dart';
import 'package:coba_uas/src/content/intermediate.dart';

class Intermediate3 extends StatelessWidget {
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
   When describing a person and place, focus on details that paint a clear picture for the listener or reader.
  ''';

  final String articleText2 = '''
Describing People:

1. Physical Appearance:
   When describing a person’s physical appearance, focus on details that paint a clear picture for the listener or reader. Mention features like height, build, hair, and eye color.
   - Example: "Maria is a tall woman with long, curly brown hair and striking green eyes. She has a slender build and a graceful walk."

2. Clothing and Style:
   Describing what someone is wearing can give insights into their personality or the context of the situation.
   - Example: "John always dresses sharply in a suit and tie for work, but on weekends he prefers comfortable jeans and t-shirts with playful prints."

3. Personality Traits:
   Discussing someone's personality helps to create a deeper understanding of who they are. Use adjectives to describe their characteristics.
   - Example: "Emma is very outgoing and loves to meet new people. She's known for her kindness and always has a smile on her face. Her friends describe her as reliable and fun-loving."

4. Habits and Interests:
   Including information about a person’s habits and interests can make descriptions more vivid and relatable.
   - Example: "Mike has a habit of reading a book every night before bed. He's passionate about photography and often spends his weekends capturing the beauty of nature."

Describing Places:

1. General Overview:
   Start with a broad description to give a sense of the place as a whole.
   - Example: "Paris is a vibrant and bustling city, known for its rich history and cultural landmarks."

2. Visual Details:
   Focus on visual elements to help the reader or listener picture the place. Mention the architecture, colors, and layout.
   - Example: "The streets of Rome are lined with ancient buildings, their walls adorned with intricate carvings and statues. The warm, earthy tones of the bricks give the city a timeless feel."

3. Atmosphere and Ambiance:
   Describe the mood or feel of the place. Is it calm and serene, or lively and chaotic?
   - Example: "The coastal village has a serene atmosphere, with the gentle sound of waves lapping against the shore and the fresh scent of sea air."

4. Notable Features:
   Highlight key landmarks or features that make the place unique.
   - Example: "New York City is home to iconic landmarks like the Statue of Liberty, Times Square, and Central Park. Each of these places draws millions of visitors every year."

5. Activities and Life:
   Describe what people do there, and how they interact with the environment.
   - Example: "In Tokyo, people are always on the move, whether they are commuting to work on the efficient subway system, enjoying a meal at a bustling sushi bar, or shopping in the trendy districts of Shibuya and Harajuku."

  ''';

  final String articleText3 = '''
  By combining these elements, you can create rich, detailed descriptions that bring people and places to life for intermediate learners.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Describing People and Places for Intermediate Learners'),
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
                      image: AssetImage('assets/inter/vocab.jpg'),
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
