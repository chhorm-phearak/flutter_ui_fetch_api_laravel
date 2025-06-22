import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 0, left: 20, bottom: 0, right: 20),
              child: Row(
                children: [
                  Container(
                    //width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/my_self_img_1.jpg",
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 10, bottom: 2, right: 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Chhorm Phearak",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Row(
                            children: [
                              Text(
                                "+855 12 34 80 34",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Iconsax.edit,
                      size: 24,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, bottom: 0, right: 20),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1.5,
                //height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 20, bottom: 0, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Icon(Iconsax.heart, size: 24),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 20, bottom: 0, right: 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "My Favorite Products",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.chevron_right, size: 24),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        child: Icon(Iconsax.card_tick, size: 24),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 20, bottom: 0, right: 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Payment Methods",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.chevron_right, size: 24),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, bottom: 0, right: 20),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1.5,
                //height: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, left: 20, bottom: 0, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Icon(Iconsax.user, size: 24),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 20, bottom: 0, right: 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Profile",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.chevron_right, size: 24),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        child: Icon(Iconsax.location, size: 24),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 20, bottom: 0, right: 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Address",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.chevron_right, size: 24),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        child: Icon(Iconsax.notification, size: 24),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 20, bottom: 0, right: 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Notification",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.chevron_right, size: 24),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        child: Icon(Iconsax.security, size: 24),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 20, bottom: 0, right: 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Security",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.chevron_right, size: 24),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.language, size: 24),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 20, bottom: 0, right: 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Language",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "English (US)",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        child: Icon(Iconsax.moon, size: 24),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, left: 20, bottom: 0, right: 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Dark Mode",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Dark",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
