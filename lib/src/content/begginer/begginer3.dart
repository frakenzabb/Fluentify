import 'package:flutter/material.dart';
import 'package:coba_uas/src/content/begginer.dart';

class Begginer3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Activities for Beginners',
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
    Engaging in daily activities that promote a healthy lifestyle is crucial for beginners who are embarking on a journey towards better physical and mental well-being. These activities should be simple, manageable, and enjoyable to ensure consistency and long-term adherence.
  ''';

  final String articleText2 = '''
    Here are some key areas to focus on:

 1. Morning Routine

Starting the day with a structured morning routine can set a positive tone for the rest of the day. For beginners, this might include:
- Hydration: Drinking a glass of water first thing in the morning helps kickstart metabolism and rehydrate the body after a night's rest.
- Stretching or Light Exercise: Spending 5-10 minutes on stretching or light exercises like yoga can help wake up the body and improve flexibility.
- Healthy Breakfast: Consuming a nutritious breakfast that includes proteins, whole grains, and fruits can provide the energy needed to stay productive throughout the morning.

 2. Physical Activity

Incorporating regular physical activity into daily life is essential for maintaining fitness and overall health. Beginners should aim for at least 30 minutes of moderate exercise most days of the week. Activities could include:
- Walking: A brisk walk in the park or around the neighborhood is an easy way to get moving.
- Home Workouts: Simple bodyweight exercises such as squats, push-ups, and lunges can be done at home without any equipment.
- Recreational Activities: Engaging in activities like dancing, swimming, or playing a sport can make exercise more enjoyable and less of a chore.

 3. Healthy Eating Habits

Adopting healthy eating habits is a cornerstone of a balanced lifestyle. Beginners should focus on:
- Balanced Meals: Ensuring each meal contains a mix of proteins, carbohydrates, and fats to provide sustained energy and essential nutrients.
- Snacking Wisely: Choosing healthy snacks such as nuts, fruits, or yogurt instead of processed foods high in sugar and fat.
- Mindful Eating: Paying attention to hunger cues and eating slowly can help prevent overeating and promote better digestion.

 4. Mental Wellness Practices

Taking care of mental health is just as important as physical health. Beginners can incorporate simple practices to boost mental well-being:
- Mindfulness or Meditation: Spending a few minutes each day in mindfulness or meditation can reduce stress and improve focus.
- Journaling: Writing down thoughts and experiences can help process emotions and set goals.
- Social Connections: Maintaining regular contact with friends and family can provide emotional support and a sense of belonging.

 5. Evening Wind-Down

Creating a calming evening routine can enhance sleep quality and overall restfulness. For beginners, this might include:
- Limiting Screen Time: Reducing exposure to screens at least an hour before bed to improve sleep quality.
- Reading or Relaxing Activities: Engaging in calming activities like reading a book, taking a warm bath, or listening to soothing music.
- Consistent Sleep Schedule: Going to bed and waking up at the same time every day helps regulate the body's internal clock.
  ''';

  final String articleText3 = '''
  By practicing on daily activities everyday, beginners can gradually build a sustainable and healthy lifestyle that supports both physical and mental well-being. The key is to start small, stay consistent, and gradually increase the intensity and variety of activities as fitness and comfort levels improve.

  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Activities for Beginners'),
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
      //title: Text('Daily Activities for Beginners'),

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
                      image: AssetImage('assets/begginer/counting.jpg'),
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
