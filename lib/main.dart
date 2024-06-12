import 'package:bobook/screen/article.dart';
import 'package:bobook/screen/borrow_books.dart';
import 'package:bobook/screen/contact_us.dart';
import 'package:bobook/screen/dashboard.dart';
import 'package:bobook/screen/login_screen.dart';
import 'package:bobook/screen/profile.dart';
import 'package:flutter/material.dart';

import 'component/navbar.dart';
import 'screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/navBar',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/navBar': (context) => NavBar(),
        '/borrowBooks': (context) => const BorrowBooksScreen(),
        '/article': (context) => const ArticleScreen(),
        '/contactUs': (context) => const ContactUsScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
