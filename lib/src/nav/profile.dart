import 'package:flutter/material.dart';
import 'package:coba_uas/src/page/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Profile Page',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ), // Mengubah warna teks di AppBar
          backgroundColor: Color.fromARGB(255, 34, 0, 146),
          automaticallyImplyLeading:
              false, // Menghapus tombol kembali dari AppBar
          centerTitle: true, // Judul akan diposisikan di tengah
        ),
        body: ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  Future<String> _getUsernameFromSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('username') ??
        ''; // Mengambil nilai username dari SharedPreferences
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _getUsernameFromSharedPreferences(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Menampilkan loading atau placeholder jika sedang memuat data
          return CircularProgressIndicator();
        } else {
          if (snapshot.hasError) {
            // Menampilkan pesan kesalahan jika terjadi error
            return Text('Error: ${snapshot.error}');
          } else {
            // Membuat tampilan utama dengan data username yang didapat dari SharedPreferences
            final username =
                snapshot.data ?? 'Guest'; // Default jika username kosong
            return _buildMainPage(username, context);
          }
        }
      },
    );
  }

  Widget _buildMainPage(String username, BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/backgrounduas2.jpg"), // Ubah dengan asset background yang Anda miliki
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                              'assets/avatar.jpg'), // Custom avatar image
                        ),
                        SizedBox(height: 16),
                        Text(
                          username,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(
                                255, 34, 0, 146), // Custom text color
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '$username@fluentify.com',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ), //
                        SizedBox(height: 16),
                        Text(
                          'Bio: Passionate about mobile app development and always eager to learn new technologies.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.location_on,
                                color: Color.fromARGB(
                                    255, 34, 0, 146)), // Custom icon color
                            SizedBox(width: 4),
                            Text(
                              'San Francisco, CA',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            CardItem(
              icon: Icons.logout,
              title: 'Logout',
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

class CardItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTap;

  const CardItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        onTap: onTap as void Function()?,
      ),
    );
  }
}
