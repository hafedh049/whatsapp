import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../utils/shared.dart';

class SecurityNotifications extends StatefulWidget {
  const SecurityNotifications({super.key});

  @override
  State<SecurityNotifications> createState() => _SecurityNotificationsState();
}

class _SecurityNotificationsState extends State<SecurityNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(FontAwesome.chevron_left_solid, size: 20, color: white)),
        title: const Text("Account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const CircleAvatar(radius: 40, backgroundColor: Colors.tealAccent, child: Icon(FontAwesome.lock_solid, size: 45, color: white)),
            const SizedBox(height: 30),
            const Text("Your chats and calls are private", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white)),
            const SizedBox(height: 20),
            const Text(
              "End-to-end encryption keeps you personal messages and calls between you and the people you choose. Not even WhatsApp can read or listen to them. This includes your:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white),
            ),
            const SizedBox(height: 20),
            for (final Map<String, dynamic> item in _items) ...<Widget>[
              Row(
                children: <Widget>[
                  Icon(item["icon"], size: 15, color: green),
                  const SizedBox(width: 20),
                  Text(item["title"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: white)),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
