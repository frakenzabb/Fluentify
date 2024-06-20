import 'package:coba_uas/entity/profile.dart';
import 'package:coba_uas/src/content/accent.dart';
import 'package:coba_uas/src/content/advance.dart';
import 'package:coba_uas/src/content/intermediate.dart';
import 'package:coba_uas/src/content/premium.dart';
import 'package:flutter/material.dart';
import 'package:coba_uas/src/decoration/banner.dart';
import 'package:coba_uas/src/page/login.dart';
import 'package:coba_uas/src/page/prof.dart';
import 'package:coba_uas/src/content/begginer.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Profile> profileList = [
  Profile(
    namapenulis: 'Azriel Dirga Efansyah',
    nim: 'Paralel B - 22082010066',
    foto: 'dirga2.jpeg',
    ttl: 'Balikpapan, 18 Oktober 2003',
    alamat: 'Jln. Sukorejo Baru Nomer 09',
    noHp: '085851335327',
    email: '22082010066@student.upnjatim.ac.id',
    urlProfilGithub: 'https://github.com/frakenzabb',
    riwayatPendidikan: [
      ' SDN Sawotratap 1',
      ' SMPN 3 Waru',
      ' SMKN Perkapalan Sidoarjo',
      ' UPN "Veteran" Jawa Timur',
    ],
    penghargaan: [
      '1. 3rd Music Festival Ramadhan 2023',
      '2. -',
    ],
  ),
  Profile(
    namapenulis: 'Muhammad Rakha Naufal',
    nim: 'Paralel B - 22082010060',
    foto: 'rakha.jpeg',
    ttl: 'Jakarta, 15 April 2004',
    alamat: 'Jl. Gunung Anyar Tambak IV Gang Melon No. 25',
    noHp: '081293260897',
    email: "mrakhanaufal.15@gmail.com",
    urlProfilGithub: "https://github.com/rakhanaufallllll",
    riwayatPendidikan: [
      ' SDIT Nurul Iman',
      ' SMPN 51 Jakarta',
      ' SMKN 46 Jakarta',
      ' UPN "Veteran" Jawa Timur',
    ],
    penghargaan: [
      '1. Juara 3 Lomba UI/UX PARTI UMS 2023',
      '2. Lolos Pendanaan P2MW 2023 dan FInalist KMI Award',
    ],
  ),
];

class MainPage extends StatelessWidget {
  final String username;
  final Color appBarBackgroundColor;
  final Color appBarTextColor;
  final Color hamburgerIconColor;

  MainPage({
    required this.username,
    this.appBarBackgroundColor = const Color.fromARGB(
        255, 1, 15, 145), // Warna default latar belakang AppBar
    this.appBarTextColor = Colors.white, // Warna default teks AppBar
    this.hamburgerIconColor = Colors.white, // Warna default hamburger icon
  });

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Main Page',
          style: TextStyle(
            color: appBarTextColor,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center, // Memastikan judul berada di tengah
        ),
        backgroundColor: appBarBackgroundColor,
        iconTheme: IconThemeData(
          color: hamburgerIconColor, // Set the color for the hamburger icon
        ),
        centerTitle: true, // Memastikan judul berada di tengah
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(username),
              accountEmail:
                  Text('$username@fluentify.com'), // Contoh email, bisa diubah
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 236, 234, 241),
                child: Text(
                  username[0].toUpperCase(),
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 1, 84),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Aksi ketika menu Home di-tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About us'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileDeveloper(
                      profileList: profileList,
                      username: 'username',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounduas2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Welcome, $username!',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                BannerWidget(),
                SizedBox(height: 20),
                GridView.count(
                  crossAxisCount: 2, // Dua kolom
                  crossAxisSpacing: 10, // Jarak antara kolom
                  mainAxisSpacing: 10, // Jarak antara baris
                  shrinkWrap:
                      true, // Agar gridview dapat berada di dalam scroll
                  physics:
                      NeverScrollableScrollPhysics(), // Nonaktifkan scrolling internal
                  children: <Widget>[
                    CardItem(
                      title: 'Beginner',
                      description: 'This is information for beginner',
                      image: AssetImage('assets/card1.jpg'),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardListScreenBegginer()),
                        );
                      },

                      cardColor: Colors.white, // Custom color
                      titleColor: Colors.black, // Custom title color
                      descriptionColor: Colors.grey, // Custom description color
                      titleStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      descriptionStyle: TextStyle(fontSize: 14),
                    ),
                    CardItem(
                      title: 'Intermediate',
                      description: 'This is Information for intermediate',
                      image: AssetImage('assets/card2.jpg'),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardListScreenInter()),
                        );
                      },
                      cardColor: Colors.white, // Custom color
                      titleColor: Colors.black, // Custom title color
                      descriptionColor: Colors.grey, // Custom description color
                      titleStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      descriptionStyle: TextStyle(fontSize: 14),
                    ),
                    CardItem(
                      title: 'Advance',
                      description: 'This is information for Advance',
                      image: AssetImage('assets/card3.jpg'),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardListScreenAdvance()),
                        );
                      },
                      cardColor: Colors.white, // Custom color
                      titleColor: Colors.black, // Custom title color
                      descriptionColor: Colors.grey, // Custom description color
                      titleStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      descriptionStyle: TextStyle(fontSize: 14),
                    ),
                    CardItem(
                      title: 'Accent',
                      description: 'This is information for Accent',
                      image: AssetImage('assets/begginer/greetings.jpg'),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Premium()),
                        );
                      },
                      cardColor: Colors.white, // Custom color
                      titleColor: Colors.black, // Custom title color
                      descriptionColor: Colors.grey, // Custom description color
                      titleStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      descriptionStyle: TextStyle(fontSize: 14),
                    ),
                    // Tambahkan lebih banyak CardItem jika diperlukan
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String description;
  final ImageProvider<Object> image;
  final VoidCallback? onTap;
  final Color cardColor; // Warna latar belakang kartu
  final Color titleColor; // Warna teks judul
  final Color descriptionColor; // Warna teks deskripsi
  final TextStyle? titleStyle; // Style teks judul
  final TextStyle? descriptionStyle; // Style teks deskripsi

  const CardItem({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    this.onTap,
    this.cardColor = Colors.white, // Warna latar belakang kartu default
    this.titleColor = Colors.black, // Warna teks judul default
    this.descriptionColor = Colors.black, // Warna teks deskripsi default
    this.titleStyle, // Style teks judul default
    this.descriptionStyle, // Style teks deskripsi default
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color:
            cardColor, // Menggunakan warna latar belakang kartu yang telah ditentukan
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image(
                image: image,
                fit: BoxFit.cover,
                height: 100, // Atur tinggi gambar agar konsisten
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: titleStyle ??
                        TextStyle(
                          // Menggunakan style teks judul yang telah ditentukan, atau menggunakan style default jika tidak ada
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:
                              titleColor, // Menggunakan warna teks judul yang telah ditentukan
                        ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: descriptionStyle ??
                        TextStyle(
                          // Menggunakan style teks deskripsi yang telah ditentukan, atau menggunakan style default jika tidak ada
                          fontSize: 16,
                          color:
                              descriptionColor, // Menggunakan warna teks deskripsi yang telah ditentukan
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
