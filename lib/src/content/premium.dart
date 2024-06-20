import 'package:coba_uas/src/page/homepage.dart';
import 'package:flutter/material.dart';
import 'package:coba_uas/src/content/accent.dart';

class Premium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Premium Fluentify',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PremiumFormPage(),
    );
  }
}

class PremiumFormPage extends StatefulWidget {
  @override
  _PremiumFormPageState createState() => _PremiumFormPageState();
}

class _PremiumFormPageState extends State<PremiumFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  String _selectedPackage = 'Basic';
  String _paymentMethod = 'ShopeePay';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Premium Fluentify'),
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
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('backgrounduas.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Username',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your username';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _username = value!;
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _password = value!;
                            },
                          ),
                          SizedBox(height: 20),
                          Text('Choose your premium package:',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.black)),
                          RadioListTile<String>(
                            title: Text('Basic'),
                            subtitle: Text('IDR 15.000/Month'),
                            value: 'Basic',
                            groupValue: _selectedPackage,
                            onChanged: (value) {
                              setState(() {
                                _selectedPackage = value!;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('Standard'),
                            subtitle: Text('IDR 30.000/Month'),
                            value: 'Standard',
                            groupValue: _selectedPackage,
                            onChanged: (value) {
                              setState(() {
                                _selectedPackage = value!;
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('Premium'),
                            subtitle: Text('IDR 50.000/Month'),
                            value: 'Premium',
                            groupValue: _selectedPackage,
                            onChanged: (value) {
                              setState(() {
                                _selectedPackage = value!;
                              });
                            },
                          ),
                          SizedBox(height: 20),
                          Text('Payment Method:',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.black)),
                          SizedBox(height: 8),
                          DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              labelText: 'Select Payment Method',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            value: _paymentMethod,
                            items: ['ShopeePay', 'Dana', 'Bank Transfer']
                                .map((method) => DropdownMenuItem(
                                      value: method,
                                      child: Text(method),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                _paymentMethod = value!;
                              });
                            },
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Processing Data')),
                                  );
                                  // Navigate to AccentFeaturePage
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AccentFeaturePage()),
                                  );
                                }
                              },
                              child: Text('OK'),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
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
          ),
        ],
      ),
    );
  }
}
