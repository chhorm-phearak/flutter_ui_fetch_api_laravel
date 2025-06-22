import 'package:ecommerce/src/pages/components/my_button.dart';
import 'package:ecommerce/src/pages/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
            child: Column(
              children: [
                Center(),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Create your account",
                  style: TextStyle(color: Colors.grey[500]),
                ),
                SizedBox(height: 50),
                MyTextField(
                  icon: Icons.person_outline,
                  text: 'Username',
                  obscure: false,
                  inputType: TextInputType.name,
                ),
                SizedBox(height: 15),
                MyTextField(
                  icon: Icons.email_outlined,
                  text: 'Email',
                  obscure: false,
                  inputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 15),
                MyTextField(
                  icon: Icons.lock_outline,
                  text: 'Password',
                  obscure: true,
                  inputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 15),
                MyTextField(
                  icon: Icons.lock_outline,
                  text: 'Confirm Password',
                  obscure: true,
                  inputType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 40),
                MyButton(text: "Sign Up"),
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
