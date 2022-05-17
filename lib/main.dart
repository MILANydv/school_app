import 'package:flutter/material.dart';
import 'package:school_app/screens/home_screen.dart';
import 'package:school_app/screens/signin_screen.dart';
import 'package:school_app/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SignIn(),
        '/signup': (context) => const SignUp(),
        '/home': (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
