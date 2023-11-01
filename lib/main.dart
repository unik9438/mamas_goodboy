import 'package:flutter/material.dart';
import 'package:mamas_goodboy/screen/login_signup/login.dart';
import 'package:mamas_goodboy/screen/login_signup/login_signup_dashboard.dart';
import 'package:mamas_goodboy/screen/login_signup/signup.dart';

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
      home: const LoginSignupDashboard(),
      routes: <String, WidgetBuilder>{
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
      },
    );
  }
}
