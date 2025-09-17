import 'package:flutter/material.dart';
import 'package:flutter_3/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_3/data/user_data.dart';
import 'package:flutter_3/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // sesi login
  Future<Widget> _getInitialPage() async {
    final prefs = await SharedPreferences.getInstance();
    final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    if(isLoggedIn) {
      final email = prefs.getString('email');
      if (email != null && userData.containsKey(email)) {
        return HomePage(
          fullName: userData[email]!['fullName']!);
      }
    }
    return LoginPage();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<Widget>(
        future: _getInitialPage(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          return snapshot.data!;
        }
      ),
    );
  }
}
