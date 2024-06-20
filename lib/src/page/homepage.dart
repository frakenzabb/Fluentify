import 'package:coba_uas/src/nav/wordapi.dart';
import 'package:flutter/material.dart';
import 'package:coba_uas/src/page/navbar.dart';
import 'package:coba_uas/src/nav/games.dart'; // Pastikan path-nya sesuai
import 'package:coba_uas/src/nav/profile.dart'; // Pastikan path-nya sesuai
import 'package:coba_uas/src/nav/mainpage.dart'; // Pastikan path-nya sesuai

class HomePage extends StatefulWidget {
  final String username = "";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    // Initialize pages here
    pages = [
      MainPage(username: widget.username), // Halaman utama dengan username
      QuizApi(),
      wordApi(),
      ProfilePage(), // Halaman profil
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Warna latar belakang AppBar
        title: Container(
          // Container untuk menambahkan gambar pada judul AppBar
          margin:
              EdgeInsets.only(left: 10), // Membuat jarak antara gambar dan teks
          child: Row(
            // Row untuk menampilkan gambar dan teks secara horizontal
            children: [
              CircleAvatar(
                // Gambar
                radius: 20,
                backgroundImage: AssetImage('assets/logo.png'),
              ),
              SizedBox(width: 130), // Memberikan jarak antara gambar dan teks
              Text(
                // Teks judul
                'FLUENTIFY',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgrounduas2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body:
          pages[selectedIndex], // Menampilkan halaman berdasarkan selectedIndex
      bottomNavigationBar: CustomNavBar(
        selectedIndex: selectedIndex,
        onItemSelected: (index) {
          // Logika untuk menangani perubahan item terpilih
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
