import 'package:flutter/material.dart';
import 'package:mamas_goodboy/screen/dashboard.dart';
import 'package:mamas_goodboy/screen/login_signup/login.dart';
import 'package:mamas_goodboy/screen/login_signup/signup.dart';

class LoginSignupDashboard extends StatelessWidget {
  const LoginSignupDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 3,
                width: MediaQuery.of(context).size.width * 2 / 3,
                child: const Image(
                  image: AssetImage("assets/xyz1.png"),
                )),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width * 2 / 3,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                child: const Text("Login"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width * 2 / 3,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: const Text("Register New"))),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Quick Login With Touch Id",
            style: TextStyle(
                color: Colors.brown, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DashboardPage()),
              );
            },
            child: Image(
              height: MediaQuery.of(context).size.width * 1 / 3,
              width: MediaQuery.of(context).size.width * 1 / 3,
              image: const AssetImage("assets/touch.png"),
            ),
          ),
          const Text(
            "Use Touch Id",
            style: TextStyle(
                color: Colors.brown,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline),
          ),
          const SizedBox(
            height: 40,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DashboardPage()),
              );
            },
            child: const Text(
              "Guest Mode",
              style: TextStyle(
                color: Colors.black26,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
