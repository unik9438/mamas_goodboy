import 'package:flutter/material.dart';
import 'package:mamas_goodboy/screen/login_signup/login.dart';
import 'package:mamas_goodboy/widget/textformfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            child: Text(
              "Sign Up",
              style: TextStyle(fontSize: 30, color: Colors.purple),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ReusableTextFormField(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: 'Name',
                  isPassword: false,
                  controller: _nameController,
                ),
                const SizedBox(height: 16.0),
                ReusableTextFormField(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: 'Email',
                  isPassword: false,
                  controller: _emailController,
                ),
                const SizedBox(height: 16.0),
                ReusableTextFormField(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  labelText: 'Password',
                  isPassword: true,
                  controller: _passwordController,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () async {
                    // Sign up logic goes here.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text('Sign Up'),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an Account? ",
                      style: TextStyle(color: Colors.black45),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: const Text("Login "))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
