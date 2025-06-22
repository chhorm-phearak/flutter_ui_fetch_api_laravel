import 'package:flutter/material.dart';

import '../elements/notification.element.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Notifications"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NotificationElement(),
            NotificationElement(),
            NotificationElement(),
            NotificationElement(),
            NotificationElement(),
            NotificationElement(),
            NotificationElement(),
            NotificationElement(),
            NotificationElement(),
            NotificationElement(),
          ],
        ),
      ),
    );
  }
}
