import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final List<User> _users = [
    User(username: 'user1', password: 'password1'),
    User(username: 'user2', password: 'password2'),
    User(username: 'user3', password: 'password3'),
    User(username: 'user', password: 'user'),
    User(username: 'Dirga', password: 'user'),
  ];

  String? _errorMessage;

  void _login() async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    bool userFound = _users
        .any((user) => user.username == username && user.password == password);

    if (userFound) {
      setState(() {
        _errorMessage = null;
      });

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('username', username);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      setState(() {
        _errorMessage = 'Invalid username or password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/backgrounduas.jpg'), // Tambahkan gambar latar belakang
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset('assets/logo.png',
                        height: 150), // Tambahkan logo
                    SizedBox(height: 20),
                    // Username text field with decoration
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person), // Icon prefix
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 20),
                    // Password text field with decoration
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock), // Icon prefix
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Colors.white70,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    if (_errorMessage != null)
                      Text(
                        _errorMessage!,
                        style:
                            TextStyle(color: Colors.red), // Error message color
                      ),
                    SizedBox(height: 20),

                    Container(
                      width: 270, // Lebar Ink widget
                      height: 60, // Tinggi Ink widget
                      child: ElevatedButton(
                        onPressed: _login,
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets
                              .zero, // Gunakan padding nol untuk memastikan ukuran tombol yang ditentukan
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                        child: Ink(
                          width: 270, // Sesuaikan dengan lebar Container
                          height: 60, // Sesuaikan dengan tinggi Container
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.blue, Colors.purple],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 10)
                            ], // Shadow effect
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat', // Custom font family
                              ),
                            ),
                          ),
                        ),
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
  }
}
