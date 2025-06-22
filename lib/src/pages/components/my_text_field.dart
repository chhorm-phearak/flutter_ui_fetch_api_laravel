import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool obscure;
  final TextInputType inputType;
  const MyTextField({
    super.key,
    required this.icon,
    required this.text,
    required this.obscure,
    required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey[500], size: 22),
        fillColor: Colors.grey[200],
        filled: true,
        hintText: text,
        hintStyle: TextStyle(color: Colors.grey[500]),
        contentPadding: EdgeInsets.symmetric(vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
