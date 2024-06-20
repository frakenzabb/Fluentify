import 'package:coba_uas/entity/profile.dart';
import 'package:flutter/material.dart';
import 'package:coba_uas/src/page/homepage.dart';
import 'package:coba_uas/src/dev/devpro_detail.dart';

class ProfileDeveloper extends StatelessWidget {
  final List<Profile> profileList;
  final String username;
  final double cardWidth; // Add the cardWidth parameter
  final double cardHeight; // Add the cardHeight parameter

  ProfileDeveloper({
    required this.profileList,
    required this.username,
    this.cardWidth = 420,
    this.cardHeight = 400,
  });

  void _navigateToProfilDetail(BuildContext context, Profile profile) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DevProDetail(profile: profile),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Developer'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/backgrounduas2.jpg'), // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Column(
            children: [
              // Logo and description card
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: cardWidth,
                  height: cardHeight,
                  child: Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/logo.png', // Replace with your logo image path
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              'This is the logo of our company. It represents our values and mission.',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                child: Center(
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 10), // Reduced height
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: profileList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 4.0),
                      child: GestureDetector(
                        onTap: () {
                          _navigateToProfilDetail(context, profileList[index]);
                        },
                        child: Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                _navigateToProfilDetail(
                                    context, profileList[index]);
                              },
                              borderRadius: BorderRadius.circular(12.0),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage:
                                          AssetImage(profileList[index].foto),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            profileList[index].namapenulis,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Text(
                                            profileList[index].nim,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Prodi {
  final String nama;
  final String akreditasi;
  final String icon;

  Prodi({required this.nama, required this.akreditasi, required this.icon});

  static List<Prodi> prodiList = [
    // Add your Prodi instances here
  ];
}

class HomeProdiDetail extends StatelessWidget {
  final Prodi programStudi;

  HomeProdiDetail({required this.programStudi});

  @override
  Widget build(BuildContext context) {
    // Build your HomeProdiDetail widget here
    return Scaffold(
      appBar: AppBar(
        title: Text(programStudi.nama),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('Details for ${programStudi.nama}'),
      ),
    );
  }
}
