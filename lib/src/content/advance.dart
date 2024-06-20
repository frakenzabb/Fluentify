import 'package:coba_uas/src/content/advance/advance1.dart';
import 'package:coba_uas/src/content/advance/advance2.dart';
import 'package:coba_uas/src/content/advance/advance3.dart';
import 'package:flutter/material.dart';
import 'package:coba_uas/src/page/homepage.dart';

class CardListScreenAdvance extends StatelessWidget {
  final List<CardItem> cardItems = [
    CardItem(
      imagePath: 'assets/advance/advance1.jpg',
      title: '1. Greetings and Introductions',
      description:
          'Learn how to greet people and introduce yourself in English. This includes common phrases for saying hello, asking and responding to "How are you?", and sharing basic personal information like your name and where you\'re from.',
    ),
    CardItem(
      imagePath: 'assets/advance/advance2.jpg',
      title: '2. Numbers and Basic Vocabularies',
      description:
          'Master the basics of numbers and essential vocabulary. This covers counting, telling time, and familiar words for everyday objects, colors, days of the week, and more.',
    ),
    CardItem(
      imagePath: 'assets/advance/advance3.jpg',
      title: '3. Daily Activities',
      description:
          'Understand how to talk about your daily routine in English. Learn vocabulary and phrases related to common activities such as waking up, going to work or school, eating meals, and leisure activities.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advance Lessons'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
              (Route<dynamic> route) => false,
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
          Positioned.fill(
            child: Image.asset(
              'assets/backgrounduas2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          ListView.builder(
            itemCount: cardItems.length,
            itemBuilder: (context, index) {
              return CardWidget(
                imagePath: cardItems[index].imagePath,
                title: cardItems[index].title,
                description: cardItems[index].description,
                onNext: () {
                  if (index < cardItems.length - 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          switch (index) {
                            case 0:
                              return Advance1(); // Greetings and Introductions
                            case 1:
                              return Advance2(); // Numbers and Basic Vocabularies
                            case 2:
                              return Advance3(); // Daily Activities
                            default:
                              return HomePage(); // Default back to HomePage
                          }
                        },
                      ),
                    );
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class CardItem {
  final String imagePath;
  final String title;
  final String description;

  CardItem({
    required this.imagePath,
    required this.title,
    required this.description,
  });
}

class CardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback? onNext;

  CardWidget({
    required this.imagePath,
    required this.title,
    required this.description,
    this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(10),
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              imagePath,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 0, 109),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                ),
                SizedBox(height: 10),
                if (onNext != null)
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: onNext,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Next'),
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
