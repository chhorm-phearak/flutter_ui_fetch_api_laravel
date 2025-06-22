import 'package:flutter/material.dart';

import 'components/my_button.dart';
import 'components/my_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
            child: Column(
              children: [
                Text(
                  "Welcome Guy",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Enter your credential login",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 50),
                MyTextField(
                  text: 'Username',
                  icon: Icons.person_outline,
                  obscure: false,
                  inputType: TextInputType.name,
                ),
                SizedBox(height: 20),
                MyTextField(
                  text: 'Password',
                  icon: Icons.lock_outline,
                  obscure: true,
                  inputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 40),
                MyButton(text: "Login Now"),
                SizedBox(height: 15),
                Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.orange[800],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.orange[800]),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 180,
                      child: Divider(
                        thickness: 2,
                        indent: 10,
                        color: Colors.grey[900],
                      ),
                    ),
                    SizedBox(
                      width: 70,
                      child: Divider(
                        thickness: 2,
                        endIndent: 10,
                        color: Colors.orange[800],
                      ),
                    )
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
