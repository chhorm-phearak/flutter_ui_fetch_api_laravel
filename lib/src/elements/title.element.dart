import 'package:flutter/material.dart';

class TitleElement extends StatelessWidget {
  final String txt_Title, txt_Button;

  const TitleElement({
    super.key,
    required this.txt_Title,
    required this.txt_Button,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, right: 14, bottom: 0, left: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt_Title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              txt_Button,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
          )
        ],
      ),
    );
  }
}
