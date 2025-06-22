import 'package:flutter/material.dart';

class SearchElement extends StatelessWidget {
  const SearchElement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 10, bottom: 0, left: 10),
      child: Container(
        height: 45,
        alignment: Alignment.centerRight,
        child: TextField(
          onChanged: (val) {},
          decoration: InputDecoration(
            hintText: 'Search..',
            hintStyle: TextStyle(
              color: Colors.grey[500],
              fontSize: 14,
            ),
            fillColor: Colors.grey.withOpacity(0.1),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(width: 1, color: Colors.grey),
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 24,
                color: Colors.grey[500],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
